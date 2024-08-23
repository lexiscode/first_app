import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  //Color brown = Colors.brown;
  //Color black = Colors.black;
  //Color temp = Colors.white; // not really used per say

  List<Color> colours = [
    Colors.white,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.orange
  ];

  int appBar = 0;
  int scaffold = 0;

  Random random = Random();

  List sounds = ['Kick.wav', 'Ride.wav', 'Snare.wav', 'Tom.wav'];
  int soundPosition = 0;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: colours[scaffold],
        appBar: AppBar(
          backgroundColor: colours[appBar],
          centerTitle: true,
          title: IconButton(
            icon: const Icon(Icons.refresh, color: Colors.blueAccent),
            onPressed: () {
              soundPosition = random.nextInt(4);
            },
          ),
        ),
        body: MaterialButton(
          child: Image.asset('assets/images/dashatar.png'),
          onPressed: () {
            setState(() {
              count++;
              player.play(AssetSource(sounds[soundPosition]));
              appBar = random.nextInt(7);
              scaffold = random.nextInt(7);
            });
          },
        ),
      ),
    );
  }
}
