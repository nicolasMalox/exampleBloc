import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/activity_screen/activity_screen.dart';
import 'package:nicolas_s_application1/presentation/cards_screen/cards_screen.dart';
import 'package:nicolas_s_application1/presentation/home_page/home_page.dart';
import 'package:nicolas_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_bottom_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgGrid,
                    margin: getMargin(left: 24, top: 6, bottom: 6)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 31, right: 23, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse107,
                          height: getSize(139),
                          width: getSize(139),
                          radius: BorderRadius.circular(getHorizontalSize(69))),
                      Padding(
                          padding: getPadding(top: 2),
                          child:
                              BlocSelector<ProfileBloc, ProfileState, String?>(
                                  selector: (state) =>
                                      state.profileModelObj!.suzanejobsTxt,
                                  builder: (context, suzanejobsTxt) {
                                    return Text(suzanejobsTxt ?? "",
                                        style: theme.textTheme.displayMedium);
                                  })),
                      Padding(
                          padding: getPadding(top: 8),
                          child:
                              BlocSelector<ProfileBloc, ProfileState, String?>(
                                  selector: (state) =>
                                      state.profileModelObj!.emailTxt,
                                  builder: (context, emailTxt) {
                                    return Text(emailTxt ?? "",
                                        style: theme.textTheme.bodyMedium);
                                  })),
                      Padding(
                          padding: getPadding(left: 4, top: 32, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 5)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_password".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 8, bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgFingerprint,
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(20),
                                    margin: getMargin(top: 7, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_touch_id".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                BlocSelector<ProfileBloc, ProfileState, bool?>(
                                    selector: (state) => state.isSelectedSwitch,
                                    builder: (context, isSelectedSwitch) {
                                      return CustomSwitch(
                                          margin: getMargin(top: 3),
                                          value: isSelectedSwitch,
                                          onChange: (value) {
                                            context.read<ProfileBloc>().add(
                                                ChangeSwitchEvent(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 33, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCut,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 2, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_languages".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 5, bottom: 6))
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 29, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgInfo,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 3, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_app_information".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 6, bottom: 5))
                              ])),
                      Padding(
                          padding:
                              getPadding(left: 4, top: 30, right: 4, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic,
                                    height: getVerticalSize(19),
                                    width: getHorizontalSize(20),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_support".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("lbl_5156446981".tr,
                                        style: CustomTextStyles
                                            .bodySmallBluegray700_1))
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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
