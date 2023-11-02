import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray10001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray70018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeGray90017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumBluegray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray70001,
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallBluegray700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Display text style
  static get displayLargeBold => theme.textTheme.displayLarge!.copyWith(
        fontSize: getFontSize(
          60,
        ),
        fontWeight: FontWeight.w700,
      );
  static get displayMediumBold => theme.textTheme.displayMedium!.copyWith(
        fontSize: getFontSize(
          46,
        ),
        fontWeight: FontWeight.w700,
      );
  static get displayMediumGray10001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray10001,
      );
  // Headline text style
  static get headlineLargeGray900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeGray900Bold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeGray900Regular =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumExtraBold =>
      theme.textTheme.headlineMedium!.copyWith(
        fontSize: getFontSize(
          28,
        ),
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumExtraBold_1 =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumSemiBold => theme.textTheme.headlineMedium!.copyWith(
        fontSize: getFontSize(
          28,
        ),
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeAmber600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber600,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGreenA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargeOnPrimarySemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Overpass text style
  static get overpassOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          6,
        ),
        fontWeight: FontWeight.w600,
      ).overpass;
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: getFontSize(
          22,
        ),
      );
  static get titleLargeBluegray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray700SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray700,
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeOnPrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumDeeporangeA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrangeA700,
        fontSize: getFontSize(
          17,
        ),
      );
  static get titleMediumGreenA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimarySemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProDisplay =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTeal300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal300,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTealA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA700,
        fontSize: getFontSize(
          17,
        ),
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          15,
        ),
      );
}

extension on TextStyle {
  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }
}
