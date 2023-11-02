import 'bloc/add_person_bloc.dart';
import 'models/add_person_model.dart';
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
class AddPersonScreen extends StatelessWidget {
  AddPersonScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddPersonBloc>(
        create: (context) =>
            AddPersonBloc(AddPersonState(addPersonModelObj: AddPersonModel()))
              ..add(AddPersonInitialEvent()),
        child: AddPersonScreen());
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
                title: AppbarTitle(text: "lbl_new_contact".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 34, right: 27, bottom: 34),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgUserGray50,
                              height: getSize(100),
                              width: getSize(100),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(top: 26),
                              child: Text("lbl_name".tr,
                                  style: theme.textTheme.bodyLarge)),
                          BlocSelector<AddPersonBloc, AddPersonState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    margin: getMargin(top: 5),
                                    hintText: "lbl_user_name".tr,
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
                          BlocSelector<AddPersonBloc, AddPersonState,
                                  TextEditingController?>(
                              selector: (state) => state.cardNumberController,
                              builder: (context, cardNumberController) {
                                return CustomTextFormField(
                                    controller: cardNumberController,
                                    margin: getMargin(top: 5),
                                    hintText: "lbl_card_number".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.number,
                                    validator: (value) {
                                      if (!isNumeric(value)) {
                                        return "Please enter valid number";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<AddPersonBloc, AddPersonState, bool?>(
                              selector: (state) => state.saveonlist,
                              builder: (context, saveonlist) {
                                return CustomCheckboxButton(
                                    text: "lbl_save_on_list".tr,
                                    value: saveonlist,
                                    margin: getMargin(top: 16),
                                    onChange: (value) {
                                      context.read<AddPersonBloc>().add(
                                          ChangeCheckBoxEvent(value: value));
                                    });
                              }),
                          Opacity(
                              opacity: 0.4,
                              child: CustomElevatedButton(
                                  text: "lbl_save".tr.toUpperCase(),
                                  margin: getMargin(top: 36, bottom: 5),
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

  /// Navigates to the addCardOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the addCardOneScreen.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addCardOneScreen,
    );
  }
}
