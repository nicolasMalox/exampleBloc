import '../models/card_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CardDetailsItemWidget extends StatelessWidget {
  CardDetailsItemWidget(
    this.cardDetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardDetailsItemModel cardDetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 12,
        right: 16,
        bottom: 12,
      ),
      decoration: AppDecoration.white,
      child: Row(
        children: [
          CustomIconButton(
            height: getSize(56),
            width: getSize(56),
            padding: getPadding(
              all: 16,
            ),
            decoration: IconButtonStyleHelper.fillGray1,
            child: CustomImageView(
              svgPath: ImageConstant.imgCart,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 4,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  cardDetailsItemModelObj.shoppingTxt,
                  style: CustomTextStyles.titleMedium18,
                ),
                Text(
                  cardDetailsItemModelObj.timeTxt,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 3,
              right: 46,
              bottom: 25,
            ),
            child: Text(
              cardDetailsItemModelObj.priceTxt,
              style: CustomTextStyles.titleMediumDeeporangeA700,
            ),
          ),
        ],
      ),
    );
  }
}
