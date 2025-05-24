import 'package:billie_eilish_d5/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayPage extends StatefulWidget {
  final MusicModel music;

  const PlayPage({super.key, required this.music});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  AudioPlayer player = AudioPlayer();
  var duration = Duration.zero;

  @override
  void initState() {
    setUp();
    super.initState();
  }

  void setUp() async {
    await player.setAsset(widget.music.asset);
  }

  String format(Duration dur) {
    final min = dur.inMinutes;
    final sec = dur.inSeconds % 60;
    return "$min:${sec.toString().padLeft(2, "0")}";
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.music.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                // change
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),

                // slider
                StreamBuilder<Duration>(
                  stream: player.positionStream,
                  builder: (context, snapshot) {
                    final pos = snapshot.data?.inMilliseconds ?? 0;
                    return Slider(
                      value: pos.toDouble(),
                      min: 0,
                      max: player.duration?.inMilliseconds.toDouble() ?? 0,
                      onChanged: (value) {
                        player.seek(Duration(milliseconds: value.toInt()));
                      },
                    );
                  },
                ),

                // timing
                Row(
                  children: [
                    StreamBuilder<Duration>(
                      stream: player.positionStream,
                      builder: (context, snapshot) {
                        final dur = snapshot.data ?? Duration.zero;
                        return Text(format(dur));
                      },
                    ),
                    Spacer(),
                    StreamBuilder<Duration?>(
                        stream: player.durationStream,
                        builder: (context, snapshot) {
                          final dur = snapshot.data ?? Duration.zero;
                          return Text(format(dur));
                        }),
                  ],
                ),
                SizedBox(height: 10),

                // controller
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        final sec = player.position.inMilliseconds - 10 * 1000;
                        if (sec > 0) {
                          player.seek(Duration(milliseconds: sec));
                        } else {
                          player.seek(Duration(milliseconds: 0));
                        }
                      },
                      child: Icon(Icons.replay_10, size: 30),
                    ),
                    SizedBox(width: 10),
                    StreamBuilder<bool>(
                        stream: player.playingStream,
                        builder: (context, snapshot) {
                          final isPlaying = snapshot.data == true;
                          return CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              if (isPlaying) {
                                player.pause();
                              } else {
                                player.play();
                              }
                            },
                            child: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow,
                              size: 30,
                            ),
                          );
                        }),
                    CupertinoButton(
                      onPressed: () {
                        final sec = player.position.inMilliseconds + 10 * 1000;
                        if (sec > duration.inMilliseconds) {
                          player.seek(duration);
                        } else {
                          player.seek(Duration(milliseconds: sec));
                        }
                      },
                      child: Icon(Icons.forward_10, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
