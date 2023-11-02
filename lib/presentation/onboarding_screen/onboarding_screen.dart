import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 36, top: 110, right: 36),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgGlobe,
                            height: getSize(80),
                            width: getSize(80)),
                        Padding(
                            padding: getPadding(top: 73),
                            child: Text("msg_online_digital".tr,
                                style: CustomTextStyles
                                    .headlineLargeGray900Regular)),
                        Text("lbl_banking".tr,
                            style: theme.textTheme.displayLarge),
                        Container(
                            width: getHorizontalSize(294),
                            margin: getMargin(left: 23, top: 58, right: 23),
                            child: Text("msg_we_help_our_user".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.88))),
                        CustomElevatedButton(
                            text: "lbl_start_now".tr.toUpperCase(),
                            margin: getMargin(top: 27, bottom: 5),
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary,
                            onTap: () {
                              onTapStartnow(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the logInScreen.
  onTapStartnow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
