import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/main/model/menu_code.dart';

class BottomNavController extends ChangeNotifier {
  BottomNavController({
    this.selectedIndex = 0,
    this.selectedMenuCode = MenuCode.HOME,
  });

  int selectedIndex;
  MenuCode selectedMenuCode;

  void onIndexChanged(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void onMenuSelected(MenuCode menuCode) {
    selectedMenuCode = menuCode;
    notifyListeners();
  }
}
