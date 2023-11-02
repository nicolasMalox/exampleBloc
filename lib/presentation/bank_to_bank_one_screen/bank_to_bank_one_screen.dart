import 'bloc/bank_to_bank_one_bloc.dart';
import 'models/bank_to_bank_one_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_icon_button.dart';

class BankToBankOneScreen extends StatelessWidget {
  const BankToBankOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BankToBankOneBloc>(
        create: (context) => BankToBankOneBloc(
            BankToBankOneState(bankToBankOneModelObj: BankToBankOneModel()))
          ..add(BankToBankOneInitialEvent()),
        child: BankToBankOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<BankToBankOneBloc, BankToBankOneState>(
        builder: (context, state) {
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
                  title: AppbarTitle(text: "lbl_bank_to_bank2".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 21, top: 26, right: 21, bottom: 26),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 6),
                            child: Text("msg_select_bank_to_send".tr,
                                style: theme.textTheme.headlineMedium)),
                        Padding(
                            padding: getPadding(left: 6, top: 2),
                            child: Text("msg_select_a_account".tr,
                                style: theme.textTheme.bodyMedium)),
                        Container(
                            height: getVerticalSize(200),
                            width: getHorizontalSize(366),
                            margin: getMargin(left: 6, top: 12),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: getPadding(
                                              left: 24,
                                              top: 22,
                                              right: 24,
                                              bottom: 22),
                                          decoration: AppDecoration
                                              .gradientPrimaryToGray,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Text(
                                                        "msg_jonathan_anderson"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .labelLargeOnPrimary)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 2, top: 39),
                                                    child: Text(
                                                        "msg_1222_3443_9881_1222"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnPrimarySemiBold)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 24),
                                                    child: Row(children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_balance"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3),
                                                                child: Text(
                                                                    "lbl_31_250"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeOnPrimarySemiBold))
                                                          ]),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVolume,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(
                                                              top: 10))
                                                    ]))
                                              ]))),
                                  CustomIconButton(
                                      height: getSize(40),
                                      width: getSize(40),
                                      padding: getPadding(all: 13),
                                      decoration:
                                          IconButtonStyleHelper.fillOnPrimary,
                                      alignment: Alignment.bottomCenter,
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckmarkPrimary))
                                ])),
                        Container(
                            margin: getMargin(left: 6, top: 24, bottom: 5),
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
              bottomNavigationBar: CustomElevatedButton(
                  text: "lbl_continue2".tr.toUpperCase(),
                  margin: getMargin(left: 47, right: 47, bottom: 56))));
    });
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
