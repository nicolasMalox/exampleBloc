import '../card_details_screen/widgets/card_details_item_widget.dart';
import 'bloc/card_details_bloc.dart';
import 'models/card_details_item_model.dart';
import 'models/card_details_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:nicolas_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nicolas_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nicolas_s_application1/widgets/custom_icon_button.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CardDetailsBloc>(
      create: (context) => CardDetailsBloc(CardDetailsState(
        cardDetailsModelObj: CardDetailsModel(),
      ))
        ..add(CardDetailsInitialEvent()),
      child: CardDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(68),
          leading: AppbarImage(
            svgPath: ImageConstant.imgGrid,
            margin: getMargin(
              left: 24,
              top: 6,
              bottom: 6,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_card_details".tr,
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 12,
            top: 34,
            right: 12,
            bottom: 34,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(180),
                width: getHorizontalSize(390),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 15,
                          right: 9,
                        ),
                        padding: getPadding(
                          left: 24,
                          top: 22,
                          right: 24,
                          bottom: 22,
                        ),
                        decoration: AppDecoration.gradientPrimaryToGray,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                "msg_jonathan_anderson".tr,
                                style: CustomTextStyles.labelLargeOnPrimary,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 39,
                              ),
                              child: Text(
                                "msg_1222_3443_9881_1222".tr,
                                style: CustomTextStyles
                                    .titleMediumOnPrimarySemiBold,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 24,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_balance".tr,
                                        style: theme.textTheme.labelSmall,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: Text(
                                          "lbl_31_250".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimarySemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: getSize(30),
                      width: getSize(30),
                      padding: getPadding(
                        all: 10,
                      ),
                      decoration: IconButtonStyleHelper.outlineBlackF,
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEye,
                      ),
                    ),
                    CustomIconButton(
                      height: getSize(30),
                      width: getSize(30),
                      padding: getPadding(
                        all: 10,
                      ),
                      decoration: IconButtonStyleHelper.outlineBlackF,
                      alignment: Alignment.centerLeft,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEyePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 73,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_today".tr,
                      style: theme.textTheme.headlineMedium,
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 11,
                        bottom: 9,
                      ),
                      child: Text(
                        "lbl_25_jan".tr,
                        style: CustomTextStyles.labelLargeBluegray700,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getVerticalSize(6),
                      width: getHorizontalSize(7),
                      margin: getMargin(
                        left: 5,
                        top: 18,
                        bottom: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 12,
                    top: 13,
                    right: 12,
                  ),
                  child: BlocSelector<CardDetailsBloc, CardDetailsState,
                      CardDetailsModel?>(
                    selector: (state) => state.cardDetailsModelObj,
                    builder: (context, cardDetailsModelObj) {
                      return ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(20),
                          );
                        },
                        itemCount:
                            cardDetailsModelObj?.cardDetailsItemList.length ??
                                0,
                        itemBuilder: (context, index) {
                          CardDetailsItemModel model =
                              cardDetailsModelObj?.cardDetailsItemList[index] ??
                                  CardDetailsItemModel();
                          return CardDetailsItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
