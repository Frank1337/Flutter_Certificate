import 'package:flutter/material.dart';
import 'package:hero_widget/MainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transition Demo",
      home: MainScreen(),
    );
  }
}
