import 'package:billie_eilish_d5/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: ListView.builder(
              itemCount: billieEilishSongs.length,
              itemBuilder: (context, index) {
                final music = billieEilishSongs[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: CupertinoButton(
                    color: Colors.yellow,
                    onPressed: () {},
                    child: Text(music.name),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
