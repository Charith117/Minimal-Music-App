import 'package:flutter/material.dart';
import 'package:musicapp/pages/home_page.dart';
import 'package:musicapp/themes/light_theme.dart';

void main() {
  runApp(
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: lightMode,
    );
  }
}
