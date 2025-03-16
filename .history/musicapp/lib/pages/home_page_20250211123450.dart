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
  // get thè playlist provider
  late final PlaylistProvider playlistProvider;

  @override
  void initState() {
    // implement initState
    super.initState();

    // get the playlist provider
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  // go to song
  void goToSong(int index) {
    // set the current song index
    playlistProvider.currentSongIndex = index;

    // navigate to the player page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => coPage(),
      ),
    );
  }

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
              onTap: () => goToSong(index),
            );
          },
        );
      }),
    );
  }
}
