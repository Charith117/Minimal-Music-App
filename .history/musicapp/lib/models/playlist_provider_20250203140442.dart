import 'package:flutter/material.dart';
import 'package:musicapp/models/song.dart';

class playlist_provider extends ChangeNotifier {
 final List<Song> _playlist = [


    Song(
      songName: ' Name', 
      artistName: 'WeekEnd', 
      albumImagePath: 'assets/images/album1.jpg', 
      audioPath: 'assets/audios/chill.mp3',
    ),
    Song(
      songName: 'Song Name', 
      artistName: 'WeekEnd', 
      albumImagePath: 'assets/images/album1.jpg', 
      audioPath: 'assets/audios/chill.mp3',
    ),
    Song(
      songName: 'Song Name', 
      artistName: 'WeekEnd', 
      albumImagePath: 'assets/images/album1.jpg', 
      audioPath: 'assets/audios/chill.mp3',
    ),

  ];
  
}