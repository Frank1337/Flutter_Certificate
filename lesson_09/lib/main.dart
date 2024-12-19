import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson_09/pages/FirebaseService.dart';
import 'package:lesson_09/pages/Home.dart';
import 'package:lesson_09/pages/Login.dart';
import 'package:lesson_09/pages/NewAccount.dart';

import 'Database/CloudDatabase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      "Home": (context) => const Home(),
      "Login": (context) => const Login(),
      "NewAccount": (context) => const NewAccount(),
      "FirebaseService": (context) => const FirebaseService(),
      "CloudDatabase": (context) => const CloudDatabase(),
    });
  }
}
