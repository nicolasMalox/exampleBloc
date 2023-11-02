import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(
    this.historyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryItemModel historyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              historyItemModelObj.octoberTxt,
              style: theme.textTheme.titleSmall,
            ),
            Text(
              historyItemModelObj.dateTxt,
              style: CustomTextStyles.bodySmallBluegray700_1,
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            top: 10,
            bottom: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_amount".tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                ),
                child: Text(
                  "lbl_480".tr,
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  historyItemModelObj.unpaidTxt,
                  style: CustomTextStyles.labelLargeGreenA70001,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
