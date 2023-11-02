import 'bloc/send_money_enter_password_bloc.dart';
import 'models/send_money_enter_password_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:nicolas_s_application1/presentation/total_bottomsheet/total_bottomsheet.dart';

class SendMoneyEnterPasswordScreen extends StatelessWidget {
  const SendMoneyEnterPasswordScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SendMoneyEnterPasswordBloc>(
        create: (context) => SendMoneyEnterPasswordBloc(
            SendMoneyEnterPasswordState(
                sendMoneyEnterPasswordModelObj: SendMoneyEnterPasswordModel()))
          ..add(SendMoneyEnterPasswordInitialEvent()),
        child: SendMoneyEnterPasswordScreen());
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
                title: AppbarTitle(text: "lbl_money_transfer".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 108, right: 47),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: getHorizontalSize(221),
                          child: Text("msg_enter_your_account".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.19))),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("msg_enter_your_account2".tr,
                              style: CustomTextStyles.bodyMediumGray900)),
                      BlocSelector<
                              SendMoneyEnterPasswordBloc,
                              SendMoneyEnterPasswordState,
                              TextEditingController?>(
                          selector: (state) => state.otpController,
                          builder: (context, otpController) {
                            return CustomPinCodeTextField(
                                context: context,
                                margin: getMargin(top: 25),
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          }),
                      CustomElevatedButton(
                          text: "lbl_make_payment".tr.toUpperCase(),
                          margin: getMargin(top: 24, bottom: 5),
                          onTap: () {
                            onTapMakepayment(context);
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

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [TotalBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapMakepayment(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => TotalBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
