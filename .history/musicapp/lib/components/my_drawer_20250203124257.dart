import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:Column(
        children: [


          // logo
          DrawerHeader(child: Center(
            child: Text(
              'P L A Y L I S T',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 24,
              ),
            ),
          ),
          )



          // home
          ListTile()


          //settings
        ],

      ),
    );
  }
}