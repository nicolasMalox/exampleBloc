import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/core/utils/validation_functions.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_outlined_button.dart';
import 'package:nicolas_s_application1/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nicolas_s_application1/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 40, right: 27, bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(80),
                              width: getSize(80)),
                          Padding(
                              padding: getPadding(top: 55),
                              child: Text("lbl_hello".tr,
                                  style: CustomTextStyles.displayMediumBold)),
                          Padding(
                              padding: getPadding(top: 3),
                              child: Text("msg_enter_your_detail".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 36),
                                  child: Text("lbl_phone_or_email".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray700))),
                          BlocSelector<LogInBloc, LogInState,
                                  TextEditingController?>(
                              selector: (state) => state.phoneController,
                              builder: (context, phoneController) {
                                return CustomTextFormField(
                                    controller: phoneController,
                                    margin: getMargin(top: 5),
                                    hintText: "lbl_email".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray70018,
                                    textInputType: TextInputType.emailAddress,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 25,
                                            top: 24,
                                            right: 10,
                                            bottom: 24),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowdown)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(72)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                    contentPadding: getPadding(
                                        top: 24, right: 30, bottom: 24),
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlinePrimaryContainer);
                              }),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 25),
                                  child: Text("lbl_password".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray700))),
                          BlocSelector<LogInBloc, LogInState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    margin: getMargin(top: 5),
                                    hintText: "lbl_password".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray70018,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 25,
                                            top: 24,
                                            right: 10,
                                            bottom: 24),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgLock)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(72)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    contentPadding: getPadding(
                                        top: 24, right: 30, bottom: 24),
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlinePrimaryContainer);
                              }),
                          CustomElevatedButton(
                              height: getVerticalSize(72),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 40),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimarySemiBold18,
                              onTap: () {
                                onTapSignin(context);
                              }),
                          CustomOutlinedButton(
                              text: "msg_sign_in_with_google".tr,
                              margin: getMargin(top: 40),
                              leftIcon: Container(
                                  margin: getMargin(right: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: () {
                                onTapSigninwith(context);
                              }),
                          Padding(
                              padding: getPadding(top: 34, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_have_account".tr,
                                            style: CustomTextStyles
                                                .titleLargeBluegray700)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignup(context);
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 8, top: 2),
                                            child: Text("lbl_sign_up".tr,
                                                style: CustomTextStyles
                                                    .titleLargePrimary)))
                                  ]))
                        ])))));
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/login API and triggers a [CreateLoginEvent] event on the [LogInBloc] bloc.
  ///
  /// Validates the form and triggers a [CreateLoginEvent] event on the [LogInBloc] bloc if the form is valid.
  /// The [BuildContext] parameter represents current [BuildContext]
  onTapSignin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<LogInBloc>().add(
            CreateLoginEvent(
              onCreateLoginEventSuccess: () {
                _onLoginDeviceAuthEventSuccess(context);
              },
              onCreateLoginEventError: () {
                _onLoginDeviceAuthEventError(context);
              },
            ),
          );
    }
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [NavigatorService]
  /// to  push the named route for the homeContainerScreenand remove
  /// all previous screens from the navigation stack.
  /// While navigation passing id, as an argument to the
  /// homeContainerScreen
  void _onLoginDeviceAuthEventSuccess(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(AppRoutes.homeContainerScreen,
        arguments: {
          NavigationArgs.id:
              context.read<LogInBloc>().postLoginDeviceAuthResp.data?.id
        });
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onLoginDeviceAuthEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapSigninwith(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signUpScreen.
  onTapTxtSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
