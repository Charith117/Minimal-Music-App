import 'package:flutter/material.dart';
import 'package:musicapp/components/neu_box.dart';
import 'package:musicapp/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<PlaylistProvider>(
      builder: (context,value,child)=> Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      
      body: Column(
        children: [
          // app bar
          Row(
            children: [
              // back button
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
                ),


              // title


              // menu button
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
                ),
            ],
          ),

          // song image


          // song duration


          //play pause button

        ],

      ),
      ),
    );
  }
}