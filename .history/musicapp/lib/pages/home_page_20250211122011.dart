import 'package:flutter/material.dart';
import 'package:musicapp/components/my_drawer.dart';
import 'package:musicapp/main.dart';
import 'package:musicapp/models/playlist_provider.dart';
import 'package:musicapp/models/song.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: Text(
          'P L A Y L I S T',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: MyDrawer(),
      body: Consumer<PlaylistProvider>(builder: (context, value, child) {
        // get the playlist
        final List<Song> playlist = value.playlist;

        // return list view UI
        return ListView.builder(
          itemCount: playlist.length,
          itemBuilder: (context, index) {
            // get individual song
            final Song song = playlist[index];

            // return list tile ui
            return ListTile(
              title: Text(song.songName),
              subtitle: Text(song.artistName),
              leading: CircleAvatar(
                backgroundImage: AssetImage(song.albumImagePath),
              ),
              onTa
            );
          },
        );
      }),
    );
  }
}
