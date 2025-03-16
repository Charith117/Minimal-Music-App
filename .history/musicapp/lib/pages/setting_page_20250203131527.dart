import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/themes/theme_provide.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      appBar: AppBar(
        title: Text('Settings'),
        // backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
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
