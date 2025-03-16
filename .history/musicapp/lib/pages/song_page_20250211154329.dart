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
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25),
          child: Column(
            children: [
              // app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // back button
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                    ),
          
          
                  // title
                  Text("P L A Y L I S T",),
          
          
                  // menu button
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    ),
                ],
              ),
          
              // song image
              NeuBox(
                child: Column(
                  children: [
                    // image
                    ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(value.playlist[value.currentSongIndex!].albumImagePath)
                    ),
                    // song and artist name
                    Row(
                      children: [
                        // song and artist name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(value.playlist[value.currentSongIndex!].songName,style: TextStyle(fontSize: 20),),
                            Text(value.playlist[value.currentSongIndex!].artistName,style: TextStyle(fontSize: 15),),
                          ],
                        )


                        // heart icon
                        

                        
                      ],
                    ),
                  ],
                ),
                ),
          
          
              // song duration
          
          
              //play pause button
          
            ],
          
          ),
        ),
      ),
      ),
    );
  }
}