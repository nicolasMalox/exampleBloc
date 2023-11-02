import 'bloc/cards_bloc.dart';
import 'models/cards_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/presentation/activity_screen/activity_screen.dart';
import 'package:nicolas_s_application1/presentation/cards_screen/cards_screen.dart';
import 'package:nicolas_s_application1/presentation/home_page/home_page.dart';
import 'package:nicolas_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class CardsScreen extends StatelessWidget {
  CardsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CardsBloc>(
        create: (context) => CardsBloc(CardsState(cardsModelObj: CardsModel()))
          ..add(CardsInitialEvent()),
        child: CardsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CardsBloc, CardsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              appBar: CustomAppBar(
                  leadingWidth: getHorizontalSize(68),
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgGrid,
                      margin: getMargin(left: 24, top: 6, bottom: 6)),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_your_cards".tr),
                  actions: [
                    AppbarIconbutton(
                        svgPath: ImageConstant.imgPlus,
                        margin:
                            getMargin(left: 24, top: 6, right: 24, bottom: 6),
                        onTap: () {
                          onTapPlusone(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 34, right: 24, bottom: 34),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapWalletmastercar(context);
                            },
                            child: Container(
                                padding: getPadding(
                                    left: 24, top: 22, right: 24, bottom: 22),
                                decoration: AppDecoration.gradientPrimaryToGray,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 2),
                                          child: Text(
                                              "msg_jonathan_anderson".tr,
                                              style: CustomTextStyles
                                                  .labelLargeOnPrimary)),
                                      Padding(
                                          padding: getPadding(left: 2, top: 39),
                                          child: Text(
                                              "msg_1222_3443_9881_1222".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimarySemiBold)),
                                      Padding(
                                          padding: getPadding(top: 24),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_balance".tr,
                                                          style: theme.textTheme
                                                              .labelSmall),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3),
                                                          child: Text(
                                                              "lbl_31_250".tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeOnPrimarySemiBold))
                                                    ]),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgVolume,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin: getMargin(top: 10))
                                              ]))
                                    ]))),
                        Container(
                            margin: getMargin(top: 36, bottom: 5),
                            padding: getPadding(
                                left: 24, top: 22, right: 24, bottom: 22),
                            decoration: AppDecoration.gradientTealToTeal,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 2),
                                      child: Text("msg_jonathan_anderson".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary)),
                                  Padding(
                                      padding: getPadding(left: 2, top: 39),
                                      child: Text("msg_1222_3443_0881_1222".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimarySemiBold)),
                                  Padding(
                                      padding: getPadding(top: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_balance".tr,
                                                      style: theme.textTheme
                                                          .labelSmall),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text(
                                                          "lbl_31_250".tr,
                                                          style: CustomTextStyles
                                                              .labelLargeOnPrimarySemiBold))
                                                ]),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVolume,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(top: 10))
                                          ]))
                                ]))
                      ])),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
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

  /// Navigates to the addCardOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addCardOneScreen.
  onTapPlusone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addCardOneScreen,
    );
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the cardDetailsScreen.
  onTapWalletmastercar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cardDetailsScreen,
    );
  }
}
