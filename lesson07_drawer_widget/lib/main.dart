import 'package:flutter/material.dart';
import 'package:lesson07_drawer_widget/pages/Home.dart';
import 'package:lesson07_drawer_widget/pages/Mail.dart';
import 'package:lesson07_drawer_widget/pages/Profile.dart';
import 'package:lesson07_drawer_widget/pages/SentItems.dart';

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
        "mail": (context) => const Mail(),
        "sentItems": (context) => const SentItems(),
        "profile": (context) => const Profile(),
      },
    );
  }
}
