import '../pay_bill_screen/widgets/pay_bill_item_widget.dart';
import 'bloc/pay_bill_bloc.dart';
import 'models/pay_bill_item_model.dart';
import 'models/pay_bill_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';

class PayBillScreen extends StatelessWidget {
  const PayBillScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PayBillBloc>(
        create: (context) =>
            PayBillBloc(PayBillState(payBillModelObj: PayBillModel()))
              ..add(PayBillInitialEvent()),
        child: PayBillScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocationOnprimary,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onTapLocationone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_pay_bill".tr)),
            body: Padding(
                padding: getPadding(left: 27, top: 34, right: 27),
                child: BlocSelector<PayBillBloc, PayBillState, PayBillModel?>(
                    selector: (state) => state.payBillModelObj,
                    builder: (context, payBillModelObj) {
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(201),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(24),
                                  crossAxisSpacing: getHorizontalSize(24)),
                          physics: BouncingScrollPhysics(),
                          itemCount:
                              payBillModelObj?.payBillItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            PayBillItemModel model =
                                payBillModelObj?.payBillItemList[index] ??
                                    PayBillItemModel();
                            return PayBillItemWidget(model, onTapOne: () {
                              onTapOne(context);
                            });
                          });
                    }))));
  }

  /// Navigates to the electricBillScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the electricBillScreen.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.electricBillScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapLocationone(BuildContext context) {
    NavigatorService.goBack();
  }
}
