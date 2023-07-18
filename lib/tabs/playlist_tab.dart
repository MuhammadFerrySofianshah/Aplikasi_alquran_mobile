import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';
import '../playlist/playlist_form.dart';
import '../playlist/playlist_detail.dart';
import '../playlist/playlist_item.dart';
import '../playlist/playlist_update_form.dart';
import '../models/playlist.dart';
import '/globals.dart';

class PlaylistTab extends StatefulWidget {
  const PlaylistTab({super.key});

  @override
  State<PlaylistTab> createState() => _PlaylistTabState();
}

class _PlaylistTabState extends State<PlaylistTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        automaticallyImplyLeading: false,
        title: Text(
          'Tambah Playlist',
          style: TextStyle(color: background, fontWeight: FontWeight.bold),
        ),
        //
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),

            // child: Text(
            //   '+ Tambah Playlist',
            //   style: TextStyle(
            //       color: background, fontSize: 20, fontWeight: FontWeight.bold),
            //   textAlign: TextAlign.left,
            // ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlaylistForm()));
            },
          )
        ],
      ),
      backgroundColor: background,
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          PlaylistItem(
              poli: Playlist(
                  namaPlaylist: "Bacaan Sebelum Tidur",
                  deskripsi: "AL-IKHLAS")),
          PlaylistItem(
              poli: Playlist(
                  namaPlaylist: "Setiap Jumat", deskripsi: "AL-BAQARAH")),
          PlaylistItem(
              poli: Playlist(
                  namaPlaylist: "Dibaca setiap malam", deskripsi: "AN-NISA")),
          PlaylistItem(
              poli: Playlist(
                  namaPlaylist: "3x Menuju Petang", deskripsi: "AL-FATIHAH")),
        ],
      ),
      // ),
    );
  }
}
