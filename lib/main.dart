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

  String kick = "Kick.wav";
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
          title: Text(
            "$count",
            style: const TextStyle(color: Color(0xffFFFFFF), fontSize: 30.0),
          ),
        ),
        body: MaterialButton(
          child: Image.asset('assets/images/dashatar.png'),
          onPressed: () {
            setState(() {
              count++;
              player.play(AssetSource(kick));
              appBar = random.nextInt(7);
              scaffold = random.nextInt(7);
            });
          },
        ),
      ),
    );
  }
}
