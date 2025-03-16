import 'package:flutter/material.dart';
import 'package:musicapp/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      child: Column(
        children: [
          // logo
          DrawerHeader(
            child: Center(
              child: Text(
                'P L A Y L I S T',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 24,
                ),
              ),
            ),
          ),

          // home
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.home,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text('Home',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),

          //settings
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.settings,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text('Settings',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),),
              onTap: () {
                // pop the drawer
                Navigator.pop(context);
                // navigate to settings page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
