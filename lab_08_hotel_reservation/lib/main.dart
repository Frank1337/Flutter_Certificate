import 'package:flutter/material.dart';
import 'package:lab_08_hotel_reservation/home.dart';
import 'package:lab_08_hotel_reservation/roomsPanel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      routes: {
        'homeLink': (context) => const Home(),
        'RoomsPanel': (context) => const RoomsPanel(),
      },
    );
  }
}
