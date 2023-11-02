import 'bloc/notifications_bloc.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_switch.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
        create: (context) => NotificationsBloc(
            NotificationsState(notificationsModelObj: NotificationsModel()))
          ..add(NotificationsInitialEvent()),
        child: NotificationsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
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
                title: AppbarTitle(text: "lbl_notifications".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 34, right: 27, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_money_receive".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text(
                                              "msg_if_anyone_sent_you".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ])),
                            BlocSelector<NotificationsBloc, NotificationsState,
                                    bool?>(
                                selector: (state) => state.isSelectedSwitch,
                                builder: (context, isSelectedSwitch) {
                                  return CustomSwitch(
                                      margin: getMargin(bottom: 23),
                                      value: isSelectedSwitch,
                                      onChange: (value) {
                                        context.read<NotificationsBloc>().add(
                                            ChangeSwitchEvent(value: value));
                                      });
                                })
                          ]),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_card_activation".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_if_card_active".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                BlocSelector<NotificationsBloc,
                                        NotificationsState, bool?>(
                                    selector: (state) =>
                                        state.isSelectedSwitch1,
                                    builder: (context, isSelectedSwitch1) {
                                      return CustomSwitch(
                                          margin: getMargin(bottom: 21),
                                          value: isSelectedSwitch1,
                                          onChange: (value) {
                                            context
                                                .read<NotificationsBloc>()
                                                .add(ChangeSwitch1Event(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_update_feature".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_if_any_new_update".tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                BlocSelector<NotificationsBloc,
                                        NotificationsState, bool?>(
                                    selector: (state) =>
                                        state.isSelectedSwitch2,
                                    builder: (context, isSelectedSwitch2) {
                                      return CustomSwitch(
                                          margin: getMargin(bottom: 23),
                                          value: isSelectedSwitch2,
                                          onChange: (value) {
                                            context
                                                .read<NotificationsBloc>()
                                                .add(ChangeSwitch2Event(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_cash_in".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "msg_if_any_cash_in_your".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                BlocSelector<NotificationsBloc,
                                        NotificationsState, bool?>(
                                    selector: (state) =>
                                        state.isSelectedSwitch3,
                                    builder: (context, isSelectedSwitch3) {
                                      return CustomSwitch(
                                          margin: getMargin(bottom: 23),
                                          value: isSelectedSwitch3,
                                          onChange: (value) {
                                            context
                                                .read<NotificationsBloc>()
                                                .add(ChangeSwitch3Event(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_money_request".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_if_anyone_sent_you2".tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                BlocSelector<NotificationsBloc,
                                        NotificationsState, bool?>(
                                    selector: (state) =>
                                        state.isSelectedSwitch4,
                                    builder: (context, isSelectedSwitch4) {
                                      return CustomSwitch(
                                          margin: getMargin(bottom: 23),
                                          value: isSelectedSwitch4,
                                          onChange: (value) {
                                            context
                                                .read<NotificationsBloc>()
                                                .add(ChangeSwitch4Event(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_money_trasfer".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_if_you_sent_money".tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                BlocSelector<NotificationsBloc,
                                        NotificationsState, bool?>(
                                    selector: (state) =>
                                        state.isSelectedSwitch5,
                                    builder: (context, isSelectedSwitch5) {
                                      return CustomSwitch(
                                          margin: getMargin(bottom: 23),
                                          value: isSelectedSwitch5,
                                          onChange: (value) {
                                            context
                                                .read<NotificationsBloc>()
                                                .add(ChangeSwitch5Event(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_number_notification".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "msg_send_notification".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                BlocSelector<NotificationsBloc,
                                        NotificationsState, bool?>(
                                    selector: (state) =>
                                        state.isSelectedSwitch6,
                                    builder: (context, isSelectedSwitch6) {
                                      return CustomSwitch(
                                          margin: getMargin(bottom: 23),
                                          value: isSelectedSwitch6,
                                          onChange: (value) {
                                            context
                                                .read<NotificationsBloc>()
                                                .add(ChangeSwitch6Event(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 25, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_email_notification".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "msg_send_notification2".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                BlocSelector<NotificationsBloc,
                                        NotificationsState, bool?>(
                                    selector: (state) =>
                                        state.isSelectedSwitch7,
                                    builder: (context, isSelectedSwitch7) {
                                      return CustomSwitch(
                                          margin: getMargin(bottom: 23),
                                          value: isSelectedSwitch7,
                                          onChange: (value) {
                                            context
                                                .read<NotificationsBloc>()
                                                .add(ChangeSwitch7Event(
                                                    value: value));
                                          });
                                    })
                              ]))
                    ]))));
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
