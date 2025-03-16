import 'package:flutter/material.dart';
import 'package:musicapp/themes/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  // initial its light mode

  ThemeData _themeData = lightMode;


  // get theme
  ThemeData get themeData =>_themeData;

  // is dark mode enabled
  bool get siDarkMode =
}
