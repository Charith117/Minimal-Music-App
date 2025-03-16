import 'package:flutter/material.dart';
import 'package:musicapp/models/song.dart';

class playlist_provider extends ChangeNotifier {
 final List<Song> _playlist = [


    Song(
      songName: 'Song Name', 
      artistName: 'WeekEnd', 
      albumImagePath: 'assets', 
      audioPath: 'path/to/audio/file'
    ),

  ];
  
}