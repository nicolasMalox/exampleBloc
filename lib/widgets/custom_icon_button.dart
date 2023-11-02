import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: theme.colorScheme.primary,
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red5001,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple50,
      );
  static BoxDecoration get fillRed1 => BoxDecoration(
        color: appTheme.red50,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get outlineBlackF => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(getHorizontalSize(15.00)),
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray1 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(getHorizontalSize(15.00)),
        border: Border.all(
          color: appTheme.gray50,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal300,
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
      );
  static BoxDecoration get fillYellowA => BoxDecoration(
        color: appTheme.yellowA400,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get fillTealA => BoxDecoration(
        color: appTheme.tealA400,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
      );
}
