import 'package:flutter/material.dart';
import 'package:musicapp/models/song.dart';

class playlist_provider extends ChangeNotifier {
 final List<String> _playlist = [


    Song(songName: songName, artistName: artistName, albumImagePath: albumImagePath, audioPath: audioPath),

  ];
  
}