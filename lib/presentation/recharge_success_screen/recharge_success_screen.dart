import 'bloc/recharge_success_bloc.dart';
import 'models/recharge_success_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';

class RechargeSuccessScreen extends StatelessWidget {
  const RechargeSuccessScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RechargeSuccessBloc>(
      create: (context) => RechargeSuccessBloc(RechargeSuccessState(
        rechargeSuccessModelObj: RechargeSuccessModel(),
      ))
        ..add(RechargeSuccessInitialEvent()),
      child: RechargeSuccessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<RechargeSuccessBloc, RechargeSuccessState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: getSize(80),
                    width: getSize(80),
                    padding: getPadding(
                      left: 29,
                      top: 31,
                      right: 29,
                      bottom: 31,
                    ),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder42,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkGray700,
                      height: getVerticalSize(16),
                      width: getHorizontalSize(22),
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(215),
                    margin: getMargin(
                      top: 18,
                    ),
                    child: Text(
                      "msg_recharge_done_successfully".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineLarge!.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
