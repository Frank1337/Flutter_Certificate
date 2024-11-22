import 'package:flutter/material.dart';
import 'package:navigation_06/Screens/homepage.dart';

import 'Screens/screen0.dart';
import 'Screens/screen1.dart';
import 'Screens/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        "Screen0": (context) => Screen0(),
        "Screen1": (context) => Screen1(),
        "Screen2": (context) =>
            const Screen2(firstName: "Navigated from HomePage"),
      },
    );
  }
}
