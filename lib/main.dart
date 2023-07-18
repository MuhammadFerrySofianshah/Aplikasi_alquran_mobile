import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_holy_quran/screens/playlist_screen.dart';
import 'package:the_holy_quran/screens/splash_screen.dart';
import 'globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      // home: PlaylistPage(),
    );
  }
}
