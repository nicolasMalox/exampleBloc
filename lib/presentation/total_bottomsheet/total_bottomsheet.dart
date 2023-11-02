import 'bloc/total_bloc.dart';
import 'models/total_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_outlined_button.dart';

class TotalBottomsheet extends StatelessWidget {
  const TotalBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TotalBloc>(
        create: (context) => TotalBloc(TotalState(totalModelObj: TotalModel()))
          ..add(TotalInitialEvent()),
        child: TotalBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: double.maxFinite,
        padding: getPadding(left: 27, top: 15, right: 27, bottom: 15),
        decoration: AppDecoration.bg
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: getHorizontalSize(60),
                  child: Divider(color: theme.colorScheme.errorContainer)),
              Padding(
                  padding: getPadding(top: 29),
                  child: Text("lbl_money_transfer".tr,
                      style: theme.textTheme.titleLarge)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(top: 35, right: 97),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse890x90,
                                height: getSize(90),
                                width: getSize(90),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(45))),
                            Padding(
                                padding:
                                    getPadding(left: 19, top: 16, bottom: 23),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_kate_morgan".tr,
                                          style:
                                              theme.textTheme.headlineMedium),
                                      Text("lbl_159_107_1365".tr,
                                          style: theme.textTheme.bodySmall)
                                    ]))
                          ]))),
              Padding(
                  padding: getPadding(top: 23),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(top: 7, bottom: 7),
                            child: Text("lbl_total".tr,
                                style: CustomTextStyles.bodyLargeGray900)),
                        Text("lbl_60_00".tr,
                            style: theme.textTheme.headlineMedium)
                      ])),
              Padding(
                  padding: getPadding(top: 7),
                  child: Divider(color: appTheme.gray200)),
              Padding(
                  padding: getPadding(top: 7),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(top: 7, bottom: 7),
                            child: Text("lbl_vat".tr,
                                style: CustomTextStyles.bodyLargeGray900)),
                        Text("lbl_2_00".tr,
                            style: theme.textTheme.headlineMedium)
                      ])),
              Padding(
                  padding: getPadding(top: 7),
                  child: Divider(color: appTheme.gray200)),
              Padding(
                  padding: getPadding(top: 7),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(top: 9, bottom: 8),
                            child: Text("msg_card_new_balance".tr,
                                style: CustomTextStyles.bodyMediumGray900)),
                        Text("lbl_1168_25".tr,
                            style: theme.textTheme.headlineMedium)
                      ])),
              Padding(
                  padding: getPadding(top: 7),
                  child: Divider(color: appTheme.gray200)),
              CustomOutlinedButton(
                  height: getVerticalSize(50),
                  text: "lbl_from_suzane".tr,
                  margin: getMargin(top: 54),
                  buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                  buttonTextStyle: theme.textTheme.bodySmall!),
              CustomElevatedButton(
                  text: "lbl_send".tr.toUpperCase(),
                  margin: getMargin(top: 40, bottom: 25),
                  onTap: () {
                    onTapSend(context);
                  })
            ]));
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the paymentSuccessScreen.
  onTapSend(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }
}
