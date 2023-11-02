import 'bloc/activity_bloc.dart';
import 'models/activity_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/activity_screen/activity_screen.dart';
import 'package:nicolas_s_application1/presentation/cards_screen/cards_screen.dart';
import 'package:nicolas_s_application1/presentation/home_page/home_page.dart';
import 'package:nicolas_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_bottom_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_icon_button.dart';

class ActivityScreen extends StatelessWidget {
  ActivityScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ActivityBloc>(
      create: (context) => ActivityBloc(ActivityState(
        activityModelObj: ActivityModel(),
      ))
        ..add(ActivityInitialEvent()),
      child: ActivityScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
              leadingWidth: getHorizontalSize(68),
              leading: AppbarImage(
                svgPath: ImageConstant.imgGrid,
                margin: getMargin(
                  left: 24,
                  top: 6,
                  bottom: 6,
                ),
              ),
              centerTitle: true,
              title: AppbarTitle(
                text: "lbl_activity".tr,
              ),
            ),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                padding: getPadding(
                  top: 34,
                ),
                child: Padding(
                  padding: getPadding(
                    left: 27,
                    right: 27,
                    bottom: 5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: AppDecoration.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 40,
                                top: 24,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "lbl_income".tr,
                                      style: CustomTextStyles.titleLarge22,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 35,
                                      top: 2,
                                    ),
                                    child: Text(
                                      "lbl_expenses".tr,
                                      style: CustomTextStyles
                                          .titleLargeBluegray700SemiBold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 40,
                                  top: 23,
                                  right: 33,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                      height: getSize(40),
                                      width: getSize(40),
                                      padding: getPadding(
                                        all: 10,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 6,
                                        bottom: 6,
                                      ),
                                      child: Text(
                                        "lbl_16_23_jan".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray90017,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgStockholmicons,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(
                                        top: 8,
                                        bottom: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(208),
                              width: getHorizontalSize(335),
                              margin: getMargin(
                                top: 28,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLine,
                                    height: getVerticalSize(208),
                                    width: getHorizontalSize(264),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(
                                      right: 17,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      margin: getMargin(
                                        top: 14,
                                      ),
                                      padding: getPadding(
                                        left: 104,
                                        top: 23,
                                        right: 104,
                                        bottom: 23,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: fs.Svg(
                                            ImageConstant.imgGroup4,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: CustomElevatedButton(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(91),
                                        text: "lbl_2_366".tr,
                                        margin: getMargin(
                                          top: 32,
                                        ),
                                        leftIcon: Container(
                                          padding: getPadding(
                                            all: 3,
                                          ),
                                          margin: getMargin(
                                            right: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(6),
                                            ),
                                          ),
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownPrimary,
                                          ),
                                        ),
                                        buttonStyle:
                                            CustomButtonStyles.outlineBlueGray,
                                        buttonTextStyle: CustomTextStyles
                                            .bodyMediumOnPrimary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 38,
                        ),
                        padding: getPadding(
                          left: 40,
                          top: 23,
                          right: 40,
                          bottom: 23,
                        ),
                        decoration: AppDecoration.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_transaction".tr,
                                  style: CustomTextStyles
                                      .headlineMediumExtraBold_1,
                                ),
                                Spacer(),
                                Padding(
                                  padding: getPadding(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    "lbl_25_jan".tr,
                                    style:
                                        CustomTextStyles.labelLargeBluegray700,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgLocation,
                                  height: getVerticalSize(6),
                                  width: getHorizontalSize(7),
                                  margin: getMargin(
                                    left: 5,
                                    top: 18,
                                    bottom: 15,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                    height: getSize(40),
                                    width: getSize(40),
                                    margin: getMargin(
                                      top: 3,
                                      bottom: 6,
                                    ),
                                    padding: getPadding(
                                      all: 10,
                                    ),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgBrightness,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 9,
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "lbl_limit".tr,
                                      style: CustomTextStyles
                                          .titleMediumSemiBold17,
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_105_00".tr,
                                        style: CustomTextStyles.titleLarge_1,
                                      ),
                                      Text(
                                        "lbl_per_day".tr,
                                        style: CustomTextStyles.bodyLarge_1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgBars,
                              height: getVerticalSize(122),
                              width: getHorizontalSize(262),
                              margin: getMargin(
                                top: 26,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 11,
                                top: 14,
                                right: 3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_17".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    "lbl_18".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    "lbl_19".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    "lbl_20".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    "lbl_21".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    "lbl_22".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    "lbl_23".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                                bottom: 3,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_mon".tr.toUpperCase(),
                                    style:
                                        CustomTextStyles.bodySmallBluegray700,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 21,
                                    ),
                                    child: Text(
                                      "lbl_tue".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.bodySmallBluegray700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                    ),
                                    child: Text(
                                      "lbl_wed".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.bodySmallBluegray700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 22,
                                    ),
                                    child: Text(
                                      "lbl_thu".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.bodySmallBluegray700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 24,
                                    ),
                                    child: Text(
                                      "lbl_fri".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.bodySmallBluegray700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 27,
                                    ),
                                    child: Text(
                                      "lbl_sat".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.bodySmallBluegray700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 22,
                                    ),
                                    child: Text(
                                      "lbl_sun".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.bodySmallBluegray700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: CustomBottomBar(
              onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              },
            ),
          ),
        );
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Card:
        return AppRoutes.cardsScreen;
      case BottomBarEnum.Activity:
        return AppRoutes.activityScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.cardsScreen:
        return CardsScreen.builder(context);
      case AppRoutes.activityScreen:
        return ActivityScreen.builder(context);
      case AppRoutes.profileScreen:
        return ProfileScreen.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
