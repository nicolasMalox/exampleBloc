import 'bloc/request_sent_bloc.dart';
import 'models/request_sent_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';

class RequestSentScreen extends StatelessWidget {
  const RequestSentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RequestSentBloc>(
      create: (context) => RequestSentBloc(RequestSentState(
        requestSentModelObj: RequestSentModel(),
      ))
        ..add(RequestSentInitialEvent()),
      child: RequestSentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<RequestSentBloc, RequestSentState>(
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
                    width: getHorizontalSize(188),
                    margin: getMargin(
                      top: 18,
                    ),
                    child: Text(
                      "msg_request_sent_successfully".tr,
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
