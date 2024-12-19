import 'package:flutter/material.dart';
import 'package:lesson_09/pages/FirebaseService.dart';
import 'package:lesson_09/pages/Home.dart';
import 'package:lesson_09/pages/Login.dart';
import 'package:lesson_09/pages/NewAccount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const Home(), routes: {
      "Login": (context) => const Login(),
      "NewAccount": (context) => const NewAccount(),
      "FirebaseService": (context) => const FirebaseService(),
    });
  }
}
