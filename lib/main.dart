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
  Color brown = Colors.brown;
  Color black = Colors.black;
  Color temp = Colors.white; // not really used per say

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: brown,
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          title: Text(
            "$count",
            style: const TextStyle(color: Color(0xffFFFFFF), fontSize: 30.0),
          ),
        ),
        body: MaterialButton(
          child: Image.asset('images/dashatar.png'),
          onPressed: () {
            setState(() {
              count++;
              temp = brown;
              brown = black;
              black = temp;
            });
          },
        ),
      ),
    );
  }
}
