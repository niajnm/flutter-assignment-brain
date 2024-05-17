import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/home/view/home_page.dart';
import 'package:flutter_assessment/app/modules/main/controller/bottom_nav_controller.dart';
import 'package:flutter_assessment/app/modules/main/model/menu_code.dart';
import 'package:flutter_assessment/app/modules/other/view/other_page.dart';
import 'package:flutter_assessment/app/modules/setting/view/setting_page.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final HomePage homeView = HomePage();
  SettingPage? settingView;

  @override
  Widget build(BuildContext context) {
    var navController = Provider.of<BottomNavController>(context, listen: true);
    return Scaffold(
      body: getPageOnSelectedMenu(navController.selectedMenuCode),
      bottomNavigationBar:
          BottomNavBar(onNewMenuSelected: navController.onMenuSelected),
    );
  }

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        return homeView;
      case MenuCode.SETTING:
        settingView ??= SettingPage();
        return settingView!;
      default:
        return OtherPage(
          viewParam: describeEnum(menuCode),
        );
    }
  }
}
