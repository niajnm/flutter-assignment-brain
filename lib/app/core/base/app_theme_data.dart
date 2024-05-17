import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assessment/app/core/values/app_colors.dart';
import 'package:flutter_assessment/app/core/values/app_fonts.dart';
import 'package:flutter_assessment/app/core/values/text_style.dart';

class AppThemeData {
  static ThemeData getDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      primaryColor: AppColors.colorPrimary,
      buttonTheme: const ButtonThemeData(alignedDropdown: true),
      cardColor: AppColors.primary500,
      iconTheme: const IconThemeData(color: AppColors.colorWhite),
      indicatorColor: AppColors.colorWhite,
      dividerColor: AppColors.neutralGray,
      hintColor: AppColors.neutralLightGray,
      dialogBackgroundColor: AppColors.pageBackgroundDark,
      textTheme: TextTheme(
        displaySmall: displaySmallTextStyleDark,
        displayMedium: displayMediumTextStyleDark,
        displayLarge: displayLargeTextStyleDark,
        headlineSmall: headlineSmallTextStyleDark,
        headlineMedium: headlineMediumTextStyleDark,
        headlineLarge: headlineLargeTextStyleDark,
        titleSmall: titleSmallTextStyleDark,
        titleMedium: titleMediumTextStyleDark,
        titleLarge: titleLargeTextStyleDark,
        bodySmall: bodySmallTextStyleDark,
        bodyMedium: bodyMediumTextStyleDark,
        bodyLarge: bodyLargeTextStyleDark,
        labelSmall: labelSmallTextStyleDark,
        labelMedium: labelMediumTextStyleDark,
        labelLarge: labelLargeTextStyleDark,
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.appBarColorDark,
          statusBarIconBrightness: Brightness.light,
        ),
        iconTheme: const IconThemeData(color: AppColors.colorWhite),
        backgroundColor: AppColors.appBarColorDark,
        titleTextStyle: pageTitleStyleDark.copyWith(fontFamily: _getFont()),
      ),
      fontFamily: _getFont(),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: AppColors.colorPrimarySwatch,
        backgroundColor: AppColors.pageBackgroundDark,
        brightness: Brightness.dark,
      ),
    );
  }

  static ThemeData getLightTheme() {
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      primaryColor: AppColors.colorPrimary,
      cardColor: AppColors.neutralBackground,
      iconTheme: const IconThemeData(color: AppColors.primary500),
      indicatorColor: AppColors.colorBlack,
      buttonTheme: const ButtonThemeData(alignedDropdown: true),
      dividerColor: AppColors.neutralSeparator,
      hintColor: AppColors.neutralGray,
      dialogBackgroundColor: AppColors.pageBackground,
      textTheme: TextTheme(
        displaySmall: displaySmallTextStyle,
        displayMedium: displayMediumTextStyle,
        displayLarge: displayLargeTextStyle,
        headlineSmall: headlineSmallTextStyle,
        headlineMedium: headlineMediumTextStyle,
        headlineLarge: headlineLargeTextStyle,
        titleSmall: titleSmallTextStyle,
        titleMedium: titleMediumTextStyle,
        titleLarge: titleLargeTextStyle,
        bodySmall: bodySmallTextStyle,
        bodyMedium: bodyMediumTextStyle,
        bodyLarge: bodyLargeTextStyle,
        labelSmall: labelSmallTextStyle,
        labelMedium: labelMediumTextStyle,
        labelLarge: labelLargeTextStyle,
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.appBarColor,
          statusBarIconBrightness: Brightness.dark,
        ),
        iconTheme: const IconThemeData(color: AppColors.primary500),
        backgroundColor: AppColors.appBarColor,
        titleTextStyle: pageTitleStyle.copyWith(fontFamily: _getFont()),
      ),
      fontFamily: _getFont(),
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: AppColors.colorPrimarySwatch,
          backgroundColor: AppColors.pageBackground,
          brightness: Brightness.light),
    );
  }

  static String _getFont() {
    return AppFonts.english;
  }
}
