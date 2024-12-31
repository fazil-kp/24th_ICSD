import 'package:flutter/material.dart';

class ScaffoldVM extends ChangeNotifier {
  bool isLightTheme = true;

  void toggleTheme() {
    isLightTheme = !isLightTheme;
    refresh();
  }

  void refresh() {
    notifyListeners();
  }
}
