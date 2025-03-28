import 'package:flutter/material.dart';
import 'package:musicapp/pages/home_page.dart';
import 'package:musicapp/themes/light_theme.dart';
import 'package:musicapp/themes/theme_provide.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: 
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => PlaylistProvider()),
      )
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
