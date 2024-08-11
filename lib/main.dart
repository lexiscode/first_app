import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text(
              "My Dashatar App",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 30.0),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.yellow,
                  child: Image.asset(
                    'images/dashatar.png',
                  )),
              Container(
                  height: 100.0,
                  width: 200.0,
                  color: Colors.black,
                  child: Image.asset(
                    'images/dashatar.png',
                  )),
              Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                  child: Image.asset(
                    'images/dashatar.png',
                  )),
            ],
          )),
    );
  }
}
