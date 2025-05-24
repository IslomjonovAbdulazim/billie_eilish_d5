import 'package:billie_eilish_d5/pages/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MusicModel {
  late String name;
  late String asset;

  MusicModel({required this.name, required this.asset});
}

List<MusicModel> billieEilishSongs = [
  MusicModel(
      name: "all the good girls go to hell",
      asset: "assets/Billie Eilish all the good girls go to hell.mp3"
  ),
  MusicModel(
      name: "bad guy",
      asset: "assets/Billie Eilish bad guy.mp3"
  ),
  MusicModel(
      name: "Bellyache",
      asset: "assets/Billie Eilish Bellyache.mp3"
  ),
  MusicModel(
      name: "Bored",
      asset: "assets/Billie Eilish Bored.mp3"
  ),
  MusicModel(
      name: "bury a friend",
      asset: "assets/Billie Eilish bury a friend.mp3"
  ),
  MusicModel(
      name: "everything i wanted",
      asset: "assets/Billie Eilish everything i wanted.mp3"
  ),
  MusicModel(
      name: "hostage",
      asset: "assets/Billie Eilish hostage.mp3"
  ),
  MusicModel(
      name: "idontwannabeyouanymore (Vertical Video)",
      asset: "assets/Billie Eilish idontwannabeyouanymore Vertical Video.mp3"
  ),
  MusicModel(
      name: "Khalid lovely",
      asset: "assets/Billie Eilish Khalid lovely.mp3"
  ),
  MusicModel(
      name: "my future",
      asset: "assets/Billie Eilish my future.mp3"
  ),
  MusicModel(
      name: "No Time To Die",
      asset: "assets/Billie Eilish No Time To Die.mp3"
  ),
  MusicModel(
      name: "Ocean Eyes",
      asset: "assets/Billie Eilish Ocean Eyes.mp3"
  ),
  MusicModel(
      name: "ROSALÍA Lo Vas A Olvidar",
      asset: "assets/Billie Eilish ROSALÍA Lo Vas A Olvidar.mp3"
  ),
  MusicModel(
      name: "Therefore I Am",
      asset: "assets/Billie Eilish Therefore I Am.mp3"
  ),
  MusicModel(
      name: "watch",
      asset: "assets/Billie Eilish watch.mp3"
  ),
  MusicModel(
      name: "when the partys over",
      asset: "assets/Billie Eilish when the partys over.mp3"
  ),
  MusicModel(
      name: "xanny",
      asset: "assets/Billie Eilish xanny.mp3"
  ),
  MusicModel(
      name: "you should see me in a crown (Vertical Video)",
      asset: "assets/Billie Eilish you should see me in a crown Vertical Video.mp3"
  ),
];