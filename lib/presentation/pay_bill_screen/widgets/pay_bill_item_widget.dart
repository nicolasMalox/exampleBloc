import '../models/pay_bill_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';
import 'package:nicolas_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PayBillItemWidget extends StatelessWidget {
  PayBillItemWidget(
    this.payBillItemModelObj, {
    Key? key,
    this.onTapOne,
  }) : super(
          key: key,
        );

  PayBillItemModel payBillItemModelObj;

  VoidCallback? onTapOne;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOne?.call();
      },
      child: Container(
        padding: getPadding(
          left: 16,
          top: 15,
          right: 16,
          bottom: 15,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconButton(
              height: getSize(35),
              width: getSize(35),
              margin: getMargin(
                left: 4,
                top: 10,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: IconButtonStyleHelper.fillYellowA,
              child: CustomImageView(
                svgPath: ImageConstant.imgLightbulbOnprimary,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 18,
              ),
              child: Text(
                payBillItemModelObj.electricitybillTxt,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.30,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 14,
              ),
              child: Text(
                "msg_pay_bill_of_this".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMedium15.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
