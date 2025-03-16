import 'package:flutter/material.dart';
import 'package:musicapp/components/neu_box.dart';
import 'package:musicapp/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<PlaylistProvider>(builder: context, value, child) {
      // get the playlist
      final List<Song> playlist = value.playlist;

      // get the current song index
      final int? currentSongIndex = value.currentSongIndex;

      // get the current song
      final Song currentSong = playlist[currentSongIndex!];

      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          title: Text(
            'N O W  P L A Y I N G',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeuBox(
                child: Image.asset(
                  currentSong.albumImagePath,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                currentSong.songName,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                currentSong.artistName,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}