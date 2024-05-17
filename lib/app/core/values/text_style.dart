import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'app_values.dart';

final TextStyle errorTextStyle = TextStyle(
  fontSize: AppValues.fontSize_12.r,
  fontWeight: FontWeight.w400,
  color: AppColors.errorColor,
);

final TextStyle cardSubtitleStyle = TextStyle(
  fontSize: AppValues.fontSize_14.r,
  fontWeight: FontWeight.w500,
  height: 1.2,
  color: AppColors.textColorGreyLight,
);

final TextStyle titleStyle = TextStyle(
  fontSize: AppValues.fontSize_18.r,
  fontWeight: FontWeight.w500,
  height: 1.34,
);

final TextStyle cardSmallTagStyle = TextStyle(
  fontSize: AppValues.fontSize_14.r,
  fontWeight: FontWeight.w500,
  height: 1.2,
  color: AppColors.textColorGreyDark,
);

final TextStyle pageTitleStyle = TextStyle(
  fontSize: AppValues.fontSize_18.r,
  fontWeight: FontWeight.w600,
  height: 1.15,
  color: AppColors.primary500,
);

final TextStyle pageTitleStyleDark = TextStyle(
  fontSize: AppValues.fontSize_18.r,
  fontWeight: FontWeight.w600,
  height: 1.15,
  color: AppColors.textColorWhite,
);

final TextStyle bigTitleStyle = TextStyle(
  fontSize: AppValues.fontSize_28.r,
  fontWeight: FontWeight.w700,
  height: 1.15,
);

final TextStyle mediumTitleStyle = TextStyle(
  fontSize: AppValues.fontSize_24.r,
  fontWeight: FontWeight.w500,
  height: 1.15,
);

final TextStyle descriptionTextStyle = TextStyle(
  fontSize: AppValues.fontSize_16.r,
);

final TextStyle boldTitleStyle = TextStyle(
  fontSize: AppValues.fontSize_18.r,
  fontWeight: FontWeight.w700,
  height: 1.34,
);

TextStyle bodySmallTextStyle = TextStyle(
  fontSize: AppValues.fontSize_12.r,
  fontWeight: FontWeight.w400,
  color: AppColors.almostBlack,
);

TextStyle bodySmallTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_12.r,
  fontWeight: FontWeight.w400,
  color: AppColors.neutralBackground,
);

TextStyle bodyMediumTextStyle = TextStyle(
  fontSize: AppValues.fontSize_14.r,
  fontWeight: FontWeight.w400,
  color: AppColors.almostBlack,
);

TextStyle bodyMediumTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_14.r,
  fontWeight: FontWeight.w400,
  color: AppColors.neutralBackground,
);

TextStyle bodyLargeTextStyle = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w400,
  color: AppColors.almostBlack,
);

TextStyle bodyLargeTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w400,
  color: AppColors.neutralBackground,
);

TextStyle displaySmallTextStyle = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w600,
  color: AppColors.primary500,
);

TextStyle displaySmallTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w600,
  color: AppColors.neutralBackground,
);

TextStyle displayMediumTextStyle = TextStyle(
  fontSize: AppValues.fontSize_20.r,
  fontWeight: FontWeight.w600,
  color: AppColors.colorBlack,
);

TextStyle displayMediumTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_20.r,
  fontWeight: FontWeight.w600,
  color: AppColors.neutralBackground,
);

TextStyle displayLargeTextStyle = TextStyle(
  fontSize: AppValues.fontSize_24.r,
  fontWeight: FontWeight.w600,
  color: AppColors.neutralGray,
);

TextStyle displayLargeTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_24.r,
  fontWeight: FontWeight.w600,
  color: AppColors.neutralBackground,
);

TextStyle headlineSmallTextStyle = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary500,
);

TextStyle headlineSmallTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w400,
  color: AppColors.neutralBackground,
);

TextStyle headlineMediumTextStyle = TextStyle(
  fontSize: AppValues.fontSize_20.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary500,
);

TextStyle headlineMediumTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_20.r,
  fontWeight: FontWeight.w400,
  color: AppColors.neutralBackground,
);

TextStyle headlineLargeTextStyle = TextStyle(
  fontSize: AppValues.fontSize_24.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary500,
);

TextStyle headlineLargeTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_24.r,
  fontWeight: FontWeight.w400,
  color: AppColors.neutralBackground,
);

TextStyle titleSmallTextStyle = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary400,
);

TextStyle titleSmallTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary400,
);

TextStyle titleMediumTextStyle = TextStyle(
  fontSize: AppValues.fontSize_20.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary400,
);

TextStyle titleMediumTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_20.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary400,
);

TextStyle titleLargeTextStyle = TextStyle(
  fontSize: AppValues.fontSize_24.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary400,
);

TextStyle titleLargeTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_24.r,
  fontWeight: FontWeight.w400,
  color: AppColors.primary400,
);

TextStyle labelSmallTextStyle = TextStyle(
  fontSize: AppValues.fontSize_12.r,
  fontWeight: FontWeight.w700,
  color: AppColors.almostBlack,
);

TextStyle labelSmallTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_12.r,
  fontWeight: FontWeight.w700,
  color: AppColors.neutralBackground,
);

TextStyle labelMediumTextStyle = TextStyle(
  fontSize: AppValues.fontSize_14.r,
  fontWeight: FontWeight.w700,
  color: AppColors.almostBlack,
);

TextStyle labelMediumTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_14.r,
  fontWeight: FontWeight.w700,
  color: AppColors.neutralBackground,
);

TextStyle labelLargeTextStyle = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w700,
  color: AppColors.almostBlack,
);

TextStyle labelLargeTextStyleDark = TextStyle(
  fontSize: AppValues.fontSize_16.r,
  fontWeight: FontWeight.w700,
  color: AppColors.neutralBackground,
);

final TextStyle datePickerSetButtonTextStyle = TextStyle(
  fontSize: AppValues.fontSize_14.r,
  fontWeight: FontWeight.w700,
  color: AppColors.colorWhite,
  height: 1.34,
);

final TextStyle selectedRadioTextStyle = TextStyle(
  color: AppColors.primary400,
  fontSize: AppValues.fontSize_16.r,
);
