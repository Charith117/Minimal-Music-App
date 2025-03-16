import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/themes/theme_provide.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        // backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            // dark mode
            Text("Dark Mode"),

            // switch
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
              onChanged: (value) => Provider.of<ThemeProvider>(context,listen: false).toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
