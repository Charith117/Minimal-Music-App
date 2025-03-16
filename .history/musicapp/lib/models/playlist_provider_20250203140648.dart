import 'package:flutter/material.dart';
import 'package:musicapp/models/song.dart';

class playlist_provider extends ChangeNotifier {
 final List<Song> _playlist = [


    Song(
      songName: 'Die for you', 
      artistName: 'WeekEnd', 
      albumImagePath: 'assets/images/album1.jpg', 
      audioPath: 'assets/audios/chill.mp3',
    ),
    Song(
      songName: 'Bruno Mars', 
      artistName: 'WeekEnd', 
      albumImagePath: 'assets/images/album1.jpg', 
      audioPath: 'assets/audios/chill.mp3',
    ),
    Song(
      songName: 'Song Name', 
      artistName: 'WeekEnd', 
      albumImagePath: 'assets/images/download.jpg', 
      audioPath: 'assets/audios/chill.mp3',
    ),

  ];

  // cuurently playing song
  int? _currentSongIndex;

  
  
}