import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        child: Row(
          children: [
            // dark mode
            Text("Dark Mode"),

            // switch
            CupertinoSwitch(
              value: false,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
