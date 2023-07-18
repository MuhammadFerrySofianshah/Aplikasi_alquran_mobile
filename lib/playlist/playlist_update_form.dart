import 'package:flutter/material.dart';
import '../models/playlist.dart';
import '../tabs/playlist_tab.dart';
import 'playlist_detail.dart';

class PlaylistUpdateForm extends StatefulWidget {
  final Playlist poli;

  const PlaylistUpdateForm({Key? key, required this.poli}) : super(key: key);
  _PlaylistUpdateFormState createState() => _PlaylistUpdateFormState();
}

class _PlaylistUpdateFormState extends State<PlaylistUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPlaylistCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPlaylistCtrl.text = widget.poli.namaPlaylist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Playlist")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPlaylist(),
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

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Simpan Perubahan"));
  }
}
