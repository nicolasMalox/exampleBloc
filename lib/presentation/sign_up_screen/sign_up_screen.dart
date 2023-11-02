import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/core/utils/validation_functions.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_outlined_button.dart';
import 'package:nicolas_s_application1/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nicolas_s_application1/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(80),
                              width: getSize(80),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(top: 61),
                              child: Text("lbl_phone_or_email".tr,
                                  style: CustomTextStyles.bodyLargeGray700)),
                          BlocSelector<SignUpBloc, SignUpState,
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
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_set_password".tr,
                                  style: CustomTextStyles.bodyLargeGray700)),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    margin: getMargin(top: 9),
                                    hintText: "lbl_set_password".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray70018,
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
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("msg_confirm_password".tr,
                                  style: CustomTextStyles.bodyLargeGray700)),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.confirmpasswordController,
                              builder: (context, confirmpasswordController) {
                                return CustomTextFormField(
                                    controller: confirmpasswordController,
                                    margin: getMargin(top: 9),
                                    hintText: "msg_confirm_password".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray70018,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 28,
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
                              text: "lbl_sign_up2".tr,
                              margin: getMargin(top: 41),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimarySemiBold18,
                              onTap: () {
                                onTapSignup(context);
                              }),
                          CustomOutlinedButton(
                              text: "msg_sign_up_with_google".tr,
                              margin: getMargin(top: 40),
                              leftIcon: Container(
                                  margin: getMargin(right: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: () {
                                onTapSignupwith(context);
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 34, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("lbl_have_account".tr,
                                                style: CustomTextStyles
                                                    .titleLargeBluegray700)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignin(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    getPadding(left: 8, top: 2),
                                                child: Text("lbl_sign_in2".tr,
                                                    style: CustomTextStyles
                                                        .titleLargePrimary)))
                                      ])))
                        ])))));
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/register API and triggers a [CreateRegisterEvent] event on the [SignUpBloc] bloc.
  ///
  /// Validates the form and triggers a [CreateRegisterEvent] event on the [SignUpBloc] bloc if the form is valid.
  /// The [BuildContext] parameter represents current [BuildContext]
  onTapSignup(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<SignUpBloc>().add(
            CreateRegisterEvent(
              onCreateRegisterEventSuccess: () {
                _onRegisterDeviceAuthEventSuccess(context);
              },
              onCreateRegisterEventError: () {
                _onRegisterDeviceAuthEventError(context);
              },
            ),
          );
    }
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the homeContainerScreen.
  void _onRegisterDeviceAuthEventSuccess(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onRegisterDeviceAuthEventError(BuildContext context) {
    Fluttertoast.showToast(
        msg: context
                .read<SignUpBloc>()
                .postRegisterDeviceAuthResp
                .message
                .toString() ??
            '');
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapSignupwith(BuildContext context) async {
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

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the logInScreen.
  onTapTxtSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
