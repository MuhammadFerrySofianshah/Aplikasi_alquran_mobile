import 'package:flutter/material.dart';
import 'playlist_detail.dart';
import '../models/playlist.dart';

class PlaylistItem extends StatelessWidget {
  final Playlist poli;

  const PlaylistItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${poli.namaPlaylist}"),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlaylistDetail(poli: poli)));
      },
    );
  }
}
