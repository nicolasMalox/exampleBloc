import 'bloc/add_card_one_bloc.dart';
import 'models/add_card_one_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/core/utils/validation_functions.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_checkbox_button.dart';
import 'package:nicolas_s_application1/widgets/custom_elevated_button.dart';
import 'package:nicolas_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardOneScreen extends StatelessWidget {
  AddCardOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddCardOneBloc>(
        create: (context) => AddCardOneBloc(
            AddCardOneState(addCardOneModelObj: AddCardOneModel()))
          ..add(AddCardOneInitialEvent()),
        child: AddCardOneScreen());
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
                title: AppbarTitle(text: "lbl_new_card".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 30, right: 27, bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_name".tr, style: theme.textTheme.bodyLarge),
                          BlocSelector<AddCardOneBloc, AddCardOneState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    margin: getMargin(top: 5),
                                    hintText: "lbl_user_name2".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_card_number".tr,
                                  style: theme.textTheme.bodyLarge)),
                          BlocSelector<AddCardOneBloc, AddCardOneState,
                                  TextEditingController?>(
                              selector: (state) => state.cardNumberController,
                              builder: (context, cardNumberController) {
                                return CustomTextFormField(
                                    controller: cardNumberController,
                                    margin: getMargin(top: 5),
                                    hintText: "lbl_card_number".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    textInputType: TextInputType.number,
                                    validator: (value) {
                                      if (!isNumeric(value)) {
                                        return "Please enter valid number";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, right: 12),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_expires".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  BlocSelector<
                                                          AddCardOneBloc,
                                                          AddCardOneState,
                                                          TextEditingController?>(
                                                      selector: (state) =>
                                                          state.dateController,
                                                      builder: (context,
                                                          dateController) {
                                                        return CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            controller:
                                                                dateController,
                                                            margin: getMargin(
                                                                top: 3),
                                                            hintText:
                                                                "lbl_date".tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargePrimaryContainer);
                                                      })
                                                ]))),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(left: 12),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_cvv".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  BlocSelector<
                                                          AddCardOneBloc,
                                                          AddCardOneState,
                                                          TextEditingController?>(
                                                      selector: (state) =>
                                                          state.cvvController,
                                                      builder: (context,
                                                          cvvController) {
                                                        return CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            controller:
                                                                cvvController,
                                                            margin: getMargin(
                                                                top: 5),
                                                            hintText:
                                                                "lbl_code".tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargePrimaryContainer,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done);
                                                      })
                                                ])))
                                  ])),
                          BlocSelector<AddCardOneBloc, AddCardOneState, bool?>(
                              selector: (state) => state.savemycarddetai,
                              builder: (context, savemycarddetai) {
                                return CustomCheckboxButton(
                                    text: "msg_save_my_card_details".tr,
                                    value: savemycarddetai,
                                    margin: getMargin(top: 18),
                                    textStyle: theme.textTheme.bodyLarge,
                                    onChange: (value) {
                                      context.read<AddCardOneBloc>().add(
                                          ChangeCheckBoxEvent(value: value));
                                    });
                              }),
                          Opacity(
                              opacity: 0.4,
                              child: CustomElevatedButton(
                                  text: "lbl_save".tr.toUpperCase(),
                                  margin: getMargin(top: 34, bottom: 5),
                                  buttonStyle: CustomButtonStyles.fillGray,
                                  onTap: () {
                                    onTapSave(context);
                                  }))
                        ])))));
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

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the paymentSuccessScreen.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }
}
