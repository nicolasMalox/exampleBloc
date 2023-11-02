import 'bloc/money_exchange_bloc.dart';
import 'models/money_exchange_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_icon_button.dart';
import 'package:nicolas_s_application1/widgets/custom_text_form_field.dart';

class MoneyExchangeScreen extends StatelessWidget {
  const MoneyExchangeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MoneyExchangeBloc>(
        create: (context) => MoneyExchangeBloc(
            MoneyExchangeState(moneyExchangeModelObj: MoneyExchangeModel()))
          ..add(MoneyExchangeInitialEvent()),
        child: MoneyExchangeScreen());
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
                title: AppbarTitle(text: "lbl_money_exchange2".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 29, right: 27, bottom: 29),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(95),
                          width: getHorizontalSize(360),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_from".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeGray900),
                                          BlocSelector<
                                                  MoneyExchangeBloc,
                                                  MoneyExchangeState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.priceController,
                                              builder:
                                                  (context, priceController) {
                                                return CustomTextFormField(
                                                    width:
                                                        getHorizontalSize(168),
                                                    controller: priceController,
                                                    margin: getMargin(top: 5),
                                                    hintText: "lbl_usd".tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargePrimaryContainer);
                                              })
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_to".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeGray900),
                                          BlocSelector<
                                                  MoneyExchangeBloc,
                                                  MoneyExchangeState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.priceController1,
                                              builder:
                                                  (context, priceController1) {
                                                return CustomTextFormField(
                                                    width:
                                                        getHorizontalSize(168),
                                                    controller:
                                                        priceController1,
                                                    margin: getMargin(top: 5),
                                                    hintText: "lbl_bdt".tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargePrimaryContainer,
                                                    textInputAction:
                                                        TextInputAction.done);
                                              })
                                        ])),
                                CustomIconButton(
                                    height: getSize(40),
                                    width: getSize(40),
                                    margin: getMargin(bottom: 12),
                                    padding: getPadding(all: 12),
                                    decoration: IconButtonStyleHelper.fillTeal,
                                    alignment: Alignment.bottomCenter,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgContrast))
                              ])),
                      Padding(
                          padding: getPadding(top: 37),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_exchange_rate".tr,
                                    style: theme.textTheme.headlineMedium),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse110,
                                    height: getSize(30),
                                    width: getSize(30),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(15)),
                                    margin: getMargin(top: 2, bottom: 7)),
                                Padding(
                                    padding:
                                        getPadding(left: 9, top: 3, bottom: 9),
                                    child: Text("lbl_usa".tr,
                                        style: CustomTextStyles
                                            .titleMediumSemiBold)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft2,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(12),
                                    margin:
                                        getMargin(left: 7, top: 12, bottom: 17))
                              ])),
                      Padding(
                          padding: getPadding(top: 17, right: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_country".tr,
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainer),
                                Spacer(),
                                Text("lbl_usd".tr,
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainer),
                                Padding(
                                    padding: getPadding(left: 43),
                                    child: Text("lbl_cr".tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer))
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(24),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder2),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgClose,
                                        height: getVerticalSize(18),
                                        width: getHorizontalSize(24),
                                        alignment: Alignment.center)),
                                Padding(
                                    padding: getPadding(left: 15),
                                    child: Text("lbl_vietnamese".tr,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(flex: 75),
                                Text("lbl_1".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                Spacer(flex: 24),
                                Text("lbl_1_746".tr,
                                    style:
                                        CustomTextStyles.titleMediumGreenA700)
                              ])),
                      Padding(padding: getPadding(top: 15), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMinimize,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 15, top: 2),
                                    child: Text("lbl_england".tr,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(),
                                Text("lbl_1".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                Padding(
                                    padding: getPadding(left: 45),
                                    child: Text("lbl_34_56".tr,
                                        style: CustomTextStyles
                                            .titleMediumGreenA700))
                              ])),
                      Padding(padding: getPadding(top: 15), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_france".tr,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(),
                                Text("lbl_1".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                Padding(
                                    padding: getPadding(left: 48),
                                    child: Text("lbl_12_09".tr,
                                        style: CustomTextStyles
                                            .titleMediumGreenA700))
                              ])),
                      Padding(padding: getPadding(top: 15), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgFileLightGreenA700,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16, top: 2),
                                    child: Text("lbl_afghanistan".tr,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(flex: 74),
                                Text("lbl_1".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                Spacer(flex: 25),
                                Text("lbl_1_746".tr,
                                    style:
                                        CustomTextStyles.titleMediumGreenA700)
                              ])),
                      Padding(padding: getPadding(top: 15), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(23),
                                    decoration: AppDecoration.outlineGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder2),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgPathclipped,
                                        height: getVerticalSize(17),
                                        width: getHorizontalSize(23),
                                        alignment: Alignment.center)),
                                Padding(
                                    padding: getPadding(left: 16, top: 2),
                                    child: Text("lbl_japan".tr,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(),
                                Text("lbl_1".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                Padding(
                                    padding: getPadding(left: 44),
                                    child: Text("lbl_2_234".tr,
                                        style: CustomTextStyles
                                            .titleMediumGreenA700))
                              ])),
                      Padding(padding: getPadding(top: 15), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_korea".tr,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(flex: 79),
                                Text("lbl_1".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                Spacer(flex: 20),
                                Text("lbl_1_746".tr,
                                    style:
                                        CustomTextStyles.titleMediumGreenA700)
                              ])),
                      Padding(padding: getPadding(top: 15), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(24),
                                    padding: getPadding(all: 1),
                                    decoration: AppDecoration.fillRedA.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder2),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(7),
                                        width: getSize(7),
                                        alignment: Alignment.topLeft)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_china".tr,
                                        style: theme.textTheme.titleSmall)),
                                Spacer(flex: 79),
                                Text("lbl_1".tr,
                                    style: CustomTextStyles.bodyLargeGray900),
                                Spacer(flex: 20),
                                Text("lbl_1_746".tr,
                                    style:
                                        CustomTextStyles.titleMediumGreenA700)
                              ]))
                    ])),
            bottomNavigationBar: Opacity(
                opacity: 0.4,
                child: CustomElevatedButton(
                    text: "lbl_exchange".tr.toUpperCase(),
                    margin: getMargin(left: 27, right: 27, bottom: 30),
                    buttonStyle: CustomButtonStyles.fillGray))));
  }

  /// Displays a date picker dialog to update the selected date
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapLocationone(BuildContext context) async {
    var initialState = BlocProvider.of<MoneyExchangeBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }
}
