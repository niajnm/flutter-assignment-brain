import 'package:flutter_assessment/app/modules/home/controller/home_controller.dart';
import 'package:flutter_assessment/app/modules/main/controller/bottom_nav_controller.dart';
import 'package:flutter_assessment/app/modules/setting/controller/theme_controller.dart';
import 'package:provider/provider.dart';

class ProviderPath {
  static dynamic providersList = [
    ChangeNotifierProvider(create: (_) => HomeController(), lazy: true),
    ChangeNotifierProvider(create: (_) => BottomNavController(), lazy: true),
    ChangeNotifierProvider(create: (_) => ThemeController(), lazy: true),
  ];
}
