import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void setDarkMode(bool isDark) {
    final next = isDark ? ThemeMode.dark : ThemeMode.light;
    if (next == _themeMode) return;
    _themeMode = next;
    notifyListeners();
  }
}
