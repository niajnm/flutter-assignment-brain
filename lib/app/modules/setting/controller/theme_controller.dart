import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/base/app_theme.dart';

class ThemeController extends ChangeNotifier {
  ThemeController() {
    _loadTheme();
  }

  AppTheme _currentTheme = AppTheme.SYSTEM;

  AppTheme get currentTheme => _currentTheme;

  void setTheme(AppTheme theme) {
    _currentTheme = theme;
    _saveTheme(theme.toString());
    notifyListeners();
  }

  void _loadTheme() {
    //
  }

  void _saveTheme(String value) {
    //
  }
}
