import 'bloc/electric_bill_bloc.dart';
import 'models/electric_bill_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/core/utils/validation_functions.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ElectricBillScreen extends StatelessWidget {
  ElectricBillScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ElectricBillBloc>(
        create: (context) => ElectricBillBloc(
            ElectricBillState(electricBillModelObj: ElectricBillModel()))
          ..add(ElectricBillInitialEvent()),
        child: ElectricBillScreen());
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
                title: AppbarTitle(text: "msg_electricity_bill2".tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 30),
                    child: Padding(
                        padding: getPadding(left: 26, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 1),
                                  child: Text("lbl_name".tr,
                                      style: theme.textTheme.bodyLarge)),
                              BlocSelector<ElectricBillBloc, ElectricBillState,
                                      TextEditingController?>(
                                  selector: (state) => state.nameController,
                                  builder: (context, nameController) {
                                    return CustomTextFormField(
                                        controller: nameController,
                                        margin: getMargin(
                                            left: 1, top: 5, right: 27),
                                        hintText: "lbl_name_here".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargePrimaryContainer,
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "Please enter valid text";
                                          }
                                          return null;
                                        },
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlinePrimaryContainer);
                                  }),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("lbl_address".tr,
                                      style: theme.textTheme.bodyLarge)),
                              BlocSelector<ElectricBillBloc, ElectricBillState,
                                      TextEditingController?>(
                                  selector: (state) => state.addressController,
                                  builder: (context, addressController) {
                                    return CustomTextFormField(
                                        controller: addressController,
                                        margin: getMargin(
                                            left: 1, top: 5, right: 27),
                                        hintText: "lbl_address_here".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargePrimaryContainer,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlinePrimaryContainer);
                                  }),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("lbl_phone".tr,
                                      style: theme.textTheme.bodyLarge)),
                              BlocSelector<ElectricBillBloc, ElectricBillState,
                                      TextEditingController?>(
                                  selector: (state) => state.phoneController,
                                  builder: (context, phoneController) {
                                    return CustomTextFormField(
                                        controller: phoneController,
                                        margin: getMargin(
                                            left: 1, top: 5, right: 27),
                                        hintText: "lbl_phone_here".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargePrimaryContainer,
                                        textInputType: TextInputType.phone,
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        },
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlinePrimaryContainer);
                                  }),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("lbl_code".tr,
                                      style: theme.textTheme.bodyLarge)),
                              BlocSelector<ElectricBillBloc, ElectricBillState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.group18250Controller,
                                  builder: (context, group18250Controller) {
                                    return CustomTextFormField(
                                        controller: group18250Controller,
                                        margin: getMargin(
                                            left: 1, top: 5, right: 27),
                                        hintText: "msg_enter_your_billing".tr,
                                        hintStyle: CustomTextStyles
                                            .bodyLargePrimaryContainer,
                                        contentPadding: getPadding(
                                            left: 12,
                                            top: 19,
                                            right: 12,
                                            bottom: 19),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlinePrimaryContainer);
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 26, right: 27),
                                  child: Row(children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_from".tr,
                                              style: theme.textTheme.bodyLarge),
                                          BlocSelector<
                                                  ElectricBillBloc,
                                                  ElectricBillState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.dateController,
                                              builder:
                                                  (context, dateController) {
                                                return CustomTextFormField(
                                                    width:
                                                        getHorizontalSize(168),
                                                    controller: dateController,
                                                    margin: getMargin(top: 5),
                                                    hintText: "lbl_date".tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargePrimaryContainer,
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .outlinePrimaryContainer);
                                              })
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 24),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_to".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              BlocSelector<
                                                      ElectricBillBloc,
                                                      ElectricBillState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.dateController1,
                                                  builder: (context,
                                                      dateController1) {
                                                    return CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                168),
                                                        controller:
                                                            dateController1,
                                                        margin:
                                                            getMargin(top: 5),
                                                        hintText: "lbl_date".tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargePrimaryContainer,
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlinePrimaryContainer);
                                                  })
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      indent: getHorizontalSize(1),
                                      endIndent: getHorizontalSize(27))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 21, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 9),
                                            child: Text("lbl_electric_fee".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("lbl_0".tr,
                                            style: CustomTextStyles
                                                .headlineLargeGray900Bold)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      endIndent: getHorizontalSize(27))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 6, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 16),
                                            child: Text("lbl_tax".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("lbl_0".tr,
                                            style: CustomTextStyles
                                                .headlineLargeGray900Bold)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      endIndent: getHorizontalSize(27))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 6, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 9),
                                            child: Text("lbl_total".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Text("lbl_0".tr,
                                            style: CustomTextStyles
                                                .headlineLargeGray900Bold)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      endIndent: getHorizontalSize(27))),
                              BlocSelector<ElectricBillBloc, ElectricBillState,
                                      TextEditingController?>(
                                  selector: (state) => state.otpController,
                                  builder: (context, otpController) {
                                    return CustomTextFormField(
                                        controller: otpController,
                                        margin: getMargin(
                                            left: 1, top: 10, right: 27),
                                        hintText: "lbl_otp".tr,
                                        hintStyle:
                                            CustomTextStyles.titleMediumTeal300,
                                        textInputAction: TextInputAction.done,
                                        contentPadding:
                                            getPadding(left: 1, right: 1),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .underLineOnPrimary);
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 61, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_select_card".tr,
                                            style:
                                                theme.textTheme.headlineMedium),
                                        Padding(
                                            padding: getPadding(top: 11),
                                            child: Text("lbl_add_card".tr,
                                                style: CustomTextStyles
                                                    .titleMediumPrimary))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(left: 1, top: 20),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Expanded(
                                            child: Container(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 18,
                                                    right: 20,
                                                    bottom: 18),
                                                decoration: AppDecoration
                                                    .gradientPrimaryToGray,
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Text(
                                                              "msg_jonathan_anderson"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .labelMediumBold)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2, top: 32),
                                                          child: Text(
                                                              "msg_1222_3443_9881_1222"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .titleSmallOnPrimary)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 21),
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
                                                                      style: CustomTextStyles
                                                                          .overpassOnPrimary),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              2),
                                                                      child: Text(
                                                                          "lbl_31_250"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelMedium))
                                                                ]),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVolume,
                                                                height:
                                                                    getSize(16),
                                                                width:
                                                                    getSize(16),
                                                                margin:
                                                                    getMargin(
                                                                        top: 8))
                                                          ]))
                                                    ]))),
                                        Expanded(
                                            child: Container(
                                                margin: getMargin(left: 20),
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 18,
                                                    right: 20,
                                                    bottom: 18),
                                                decoration: AppDecoration
                                                    .gradientTealToTeal,
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Text(
                                                              "msg_jonathan_anderson"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .labelMediumBold)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2, top: 32),
                                                          child: Text(
                                                              "msg_1222_3443_0881_1222"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .titleSmallOnPrimary)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 21),
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
                                                                      style: CustomTextStyles
                                                                          .overpassOnPrimary),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              2),
                                                                      child: Text(
                                                                          "lbl_31_250"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelMedium))
                                                                ]),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVolume,
                                                                height:
                                                                    getSize(16),
                                                                width:
                                                                    getSize(16),
                                                                margin:
                                                                    getMargin(
                                                                        top: 8))
                                                          ]))
                                                    ])))
                                      ])))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_send_otp".tr.toUpperCase(),
                margin: getMargin(left: 27, right: 28, bottom: 50),
                onTap: () {
                  onTapSendotp(context);
                })));
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

  /// Navigates to the bilPaymentSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the bilPaymentSuccessScreen.
  onTapSendotp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bilPaymentSuccessScreen,
    );
  }
}
