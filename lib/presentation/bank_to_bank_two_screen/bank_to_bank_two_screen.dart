import 'bloc/bank_to_bank_two_bloc.dart';
import 'models/bank_to_bank_two_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_text_form_field.dart';

class BankToBankTwoScreen extends StatelessWidget {
  const BankToBankTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BankToBankTwoBloc>(
        create: (context) => BankToBankTwoBloc(
            BankToBankTwoState(bankToBankTwoModelObj: BankToBankTwoModel()))
          ..add(BankToBankTwoInitialEvent()),
        child: BankToBankTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocationOnprimary,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onTapLocationone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_bank_to_bank2".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 76, right: 47),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_enter_the_ammount".tr,
                          style: theme.textTheme.headlineMedium),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("msg_enter_ammount_you".tr,
                              style: theme.textTheme.bodyMedium)),
                      BlocSelector<BankToBankTwoBloc, BankToBankTwoState,
                              TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                                controller: priceController,
                                margin: getMargin(top: 14),
                                hintText: "lbl_500".tr,
                                hintStyle: theme.textTheme.titleLarge!,
                                textInputAction: TextInputAction.done);
                          }),
                      CustomElevatedButton(
                          text: "lbl_continue2".tr.toUpperCase(),
                          margin: getMargin(top: 30, bottom: 5),
                          onTap: () {
                            onTapContinue(context);
                          })
                    ]))));
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

  /// Navigates to the bankToBankThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the bankToBankThreeScreen.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bankToBankThreeScreen,
    );
  }
}
