import 'package:billie_eilish_d5/pages/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      name: "All the Good Girls Go to Hell",
      asset: "assets/Billie Eilish all the good girls go to hell.mp3"
  ),
  MusicModel(
      name: "Bad Guy",
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
      name: "Bury a Friend",
      asset: "assets/Billie Eilish bury a friend.mp3"
  ),
  MusicModel(
      name: "Everything I Wanted",
      asset: "assets/Billie Eilish everything i wanted.mp3"
  ),
  MusicModel(
      name: "Hostage",
      asset: "assets/Billie Eilish hostage.mp3"
  ),
  MusicModel(
      name: "Idontwannabeyouanymore",
      asset: "assets/Billie Eilish idontwannabeyouanymore Vertical Video.mp3"
  ),
  MusicModel(
      name: "Lovely (with Khalid)",
      asset: "assets/Billie Eilish Khalid lovely.mp3"
  ),
  MusicModel(
      name: "My Future",
      asset: "assets/Billie Eilish my future.mp3"
  ),
  MusicModel(
      name: "No Time to Die",
      asset: "assets/Billie Eilish No Time To Die.mp3"
  ),
  MusicModel(
      name: "Ocean Eyes",
      asset: "assets/Billie Eilish Ocean Eyes.mp3"
  ),
  MusicModel(
      name: "Lo Vas a Olvidar (with Rosalía)",
      asset: "assets/Billie Eilish ROSALÍA Lo Vas A Olvidar.mp3"
  ),
  MusicModel(
      name: "Therefore I Am",
      asset: "assets/Billie Eilish Therefore I Am.mp3"
  ),
  MusicModel(
      name: "Watch",
      asset: "assets/Billie Eilish watch.mp3"
  ),
  MusicModel(
      name: "When the Party's Over",
      asset: "assets/Billie Eilish when the partys over.mp3"
  ),
  MusicModel(
      name: "Xanny",
      asset: "assets/Billie Eilish xanny.mp3"
  ),
  MusicModel(
      name: "You Should See Me in a Crown",
      asset: "assets/Billie Eilish you should see me in a crown Vertical Video.mp3"
  ),
];


