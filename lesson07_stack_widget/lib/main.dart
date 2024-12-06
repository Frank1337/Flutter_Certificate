import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("StackView Example"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 150,
            right: 50,
            child: Container(
              color: Colors.teal,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 150,
            right: 100,
            child: Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 210,
            right: 160,
            child: Container(
              color: Colors.grey,
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    ));
  }
}
