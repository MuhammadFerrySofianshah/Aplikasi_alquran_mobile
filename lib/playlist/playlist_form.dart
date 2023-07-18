import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_holy_quran/globals.dart';
import 'package:the_holy_quran/screens/playlist_screen.dart';
import '../models/playlist.dart';
import '../screens/home_screen.dart';
import 'playlist_detail.dart';

class PlaylistForm extends StatefulWidget {
  const PlaylistForm({Key? key}) : super(key: key);
  _PlaylistFormState createState() => _PlaylistFormState();
}

class _PlaylistFormState extends State<PlaylistForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPlaylistCtrl = TextEditingController();
  final _deskripsiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: background,
        title: Row(children: [
          IconButton(
              onPressed: (() => Navigator.of(context).pop()),
              icon: SvgPicture.asset('assets/svgs/back-icon.svg')),
          const SizedBox(
            width: 24,
          ),
          Text("Tambah Playlist",
              style: GoogleFonts.poppins(
                  color: primary, fontWeight: FontWeight.bold)),
        ]),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPlaylist(),
              SizedBox(height: 5),
              _fieldDeskripsi(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPlaylist() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Playlist"),
      controller: _namaPlaylistCtrl,
    );
  }

  _fieldDeskripsi() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Surah"),
      controller: _deskripsiCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin ingin Menyimpan data ini?"),
            actions: [
              // tombol ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("YA"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
              // tombol batal
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Simpan"));
  }
}
