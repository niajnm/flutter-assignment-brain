import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/home/view/home_page.dart';
import 'package:flutter_assessment/app/modules/main/view/main_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'core/base/app_theme.dart';
import 'core/base/app_theme_data.dart';
import 'core/route/route_services.dart';
import 'core/values/app_values.dart';
import 'modules/setting/controller/theme_controller.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return ScreenUtilInit(
        designSize: const Size(
          AppValues.defaultScreenWidth,
          AppValues.defaultScreenHeight,
        ),
        splitScreenMode: false,
        minTextAdapt: true,
        useInheritedMediaQuery: false,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
              title: "",
              debugShowCheckedModeBanner: false,
              theme: _getTheme(),
              home: MainView(),
              initialRoute: '/',
              onGenerateRoute: RouteServices.generateRoute);
        });
  }

  ThemeData _getTheme() {
    var controller = Provider.of<ThemeController>(context, listen: true);
    AppTheme savedTheme = controller.currentTheme;

    if (savedTheme == AppTheme.DARK) {
      return AppThemeData.getDarkTheme();
    } else if (savedTheme == AppTheme.LIGHT) {
      return AppThemeData.getLightTheme();
    } else {
      return _getThemeSameAsSystem();
    }
  }

  ThemeData _getThemeSameAsSystem() {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return isDarkMode
        ? AppThemeData.getDarkTheme()
        : AppThemeData.getLightTheme();
  }
}
