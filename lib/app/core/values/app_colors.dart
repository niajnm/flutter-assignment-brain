import 'package:flutter/material.dart';

abstract class AppColors {
  static Color pure_white = const Color(0xffffffff);
  static Color transparent = Colors.transparent;

  static const Color loaderBackground = Color(0x32000000);

  static const Color appBarColorDark = primary500;
  static const Color neutralGray = Color(0xFF6F7B83);
  static const Color neutralLightGray = Color(0xFFA0ABB4);
  static const Color textColorGreyDark = Color(0xFF979797);
  static const Color textColorGreyLight = Color(0xFFABABAB);
  static const Color appBarColor = Color(0xFFFFFFFF);
  static const Color errorColor = Color(0xFFAB0B0B);
  static const Color textColorWhite = Color(0xFFFFFFFF);
  static const Color colorBlack = Color(0xFF000000);
  static const Color colorWhite = Color(0xffffffff);
  static const Color colorPrimary = Color(0xFF55C595);
  static const Color colorAccent = Color(0xFF359D9E);
  static const Color textColorPrimary = Color(0xFF323232);
  static const Color neutralAlmostBlack = Color(0xFF1F3541);
  static const Color loaderTint = Color(0xFF288239);
  static const Color almostBlack = Color(0xFF1F3541);
  static const Color pageBackground = Color(0xFFFAFBFD);
  static const Color pageBackgroundDark = neutralAlmostBlack;
  static const Color neutralSeparator = Color(0xFFECEDF0);
  static const Color neutralBackground = Color(0xFFF8F9FA);
  static const Color bottomItemSelectedColor = primary400;
  static const Color bottomItemUnselectedColor = primary500;
  static const Color bottomItemUnselectedColorDark = colorWhite;
  static const Color bottomNavColor = Color(0xFFF8F9FA);
  static const Color defaultRippleColor = Color(0x0338686A);

  static const Color white = Color(0xffffffff);

  static const Color bodyBG = Color(0xffffffff);

  //Primary Shades

  static const Color primary = Color(0xff194185);

  static const Color primary25 = Color(0xffF5FAFF);

  static const Color primary50 = Color(0xffEFF8FF);

  static const Color primary100 = Color(0xffD1E9FF);

  static const Color primary200 = Color(0xffB2DDFF);

  static const Color primary300 = Color(0xff53B1FD);

  static const Color primary400 = Color(0xff53B1FD);

  static const Color primary500 = Color(0xff2E90FA);

  static const Color primary600 = Color(0xff1570EF);

  static const Color primary700 = Color(0xff175CD3);

  static const Color primary800 = Color(0xff1849A9);

  static const Color primary900 = Color(0xff194185);

  //Secondary Shades

  static const Color secondary = Color(0xff3E1C96);

  static const Color secondary25 = Color(0xffFAFAFF);

  static const Color secondary50 = Color(0xffF4F3FF);

  static const Color secondary100 = Color(0xffEBE9FE);

  static const Color secondary200 = Color(0xffD9D6FE);

  static const Color secondary300 = Color(0xffBDB4FE);

  static const Color secondary400 = Color(0xff9B8AFB);

  static const Color secondary500 = Color(0xff7A5AF8);

  static const Color secondary600 = Color(0xff6938EF);

  static const Color secondary700 = Color(0xff5925DC);

  static const Color secondary800 = Color(0xff4A1FB8);

  static const Color secondary900 = Color(0xff3E1C96);

  static MaterialColor generateMaterialColor(Color primaryColor) {
    final Map<int, Color> colorMap = {
      50: primaryColor.withOpacity(0.1),
      100: primaryColor.withOpacity(0.2),
      200: primaryColor.withOpacity(0.3),
      300: primaryColor.withOpacity(0.4),
      400: primaryColor.withOpacity(0.5),
      500: primaryColor.withOpacity(0.6),
      600: primaryColor.withOpacity(0.7),
      700: primaryColor.withOpacity(0.8),
      800: primaryColor.withOpacity(0.9),
      900: primaryColor.withOpacity(1.0),
    };
    return MaterialColor(primaryColor.value, colorMap);
  }

  static final MaterialColor colorPrimarySwatch =
      generateMaterialColor(Color(0xff2E90FA));
}
