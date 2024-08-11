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
          //foregroundColor: const Color(0xffFFFFFF),
          centerTitle: true,
          //elevation: 0.0,
          title: const Text(
            "My Dashatar App",
            style: TextStyle(color: Color(0xffFFFFFF), fontSize: 30.0),
          ),
        ),
        body: Center(
          child: Image.asset('images/dashatar.png'),
        ),
      ),
    );
  }
}
