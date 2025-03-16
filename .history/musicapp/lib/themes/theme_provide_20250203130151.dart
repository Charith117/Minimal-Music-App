import 'package:flutter/material.dart';
import 'package:musicapp/themes/drak_theme.dart';
import 'package:musicapp/themes/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  // initial its light mode

  ThemeData _themeData = lightMode;

  // get theme
  ThemeData get themeData => _themeData;

  // is dark mode enabled
  bool get iDarkMode => _themeData == darkMode;

  // set theme

  set themeData(ThemeData themeData) {
    _themeData = themeData;


    // update ui
    notifyListeners();
  }

  // toggle theme
  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }else{
      themeData = lightMode;
    }
  }
  
}
