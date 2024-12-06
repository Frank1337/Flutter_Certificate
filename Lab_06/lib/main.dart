import 'package:flutter/material.dart';
import 'package:lab_06/pages/ChPizza.dart';
import 'package:lab_06/pages/Facebook.dart';
import 'package:lab_06/pages/Fries.dart';
import 'package:lab_06/pages/Twitter.dart';
import 'package:lab_06/pages/VPizza.dart';
import 'package:lab_06/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      routes: {
        "VPizza": (context) => const VPizza(),
        "ChPizza": (context) => const ChPizza(),
        "Fries": (context) => const Fries(),
        "Twitter": (context) => const Twitter(),
        "Facebook": (context) => const Facebook(),
      },
    );
  }
}
