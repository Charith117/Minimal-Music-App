import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              value: Provider.of<Theme,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
