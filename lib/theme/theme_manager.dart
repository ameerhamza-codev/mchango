import 'package:flutter/material.dart';
import 'package:mchango/theme/storage_manager.dart';
import 'package:mchango/utils/constants.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    primaryColor: Colors.black,
    canvasColor: const Color(0xFF212121),
    primaryColorDark: Colors.black,
    dividerColor: Colors.black12,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatchColor).copyWith(secondary: Colors.white, brightness: Brightness.dark),
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    primaryColorLight: Colors.white,
    canvasColor: const Color(0xFFFFFFFF),
    dividerColor: Colors.white54,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatchColor).copyWith(secondary: Colors.black, brightness: Brightness.light),
  );

  ThemeData? _themeData;
  ThemeData? getTheme() => _themeData;

  ThemeNotifier() {
    StorageManager.readData('themeMode').then((value) {
      print('value read from storage: ' + value.toString());
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        _themeData = lightTheme;
      } else {
        print('setting dark theme');
        _themeData = lightTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _themeData = darkTheme;
    StorageManager.saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    StorageManager.saveData('themeMode', 'light');
    notifyListeners();
  }
}