import 'package:flutter/material.dart';
import 'package:lab_a_7/pages/Alarm.dart';
import 'package:lab_a_7/pages/Business.dart';
import 'package:lab_a_7/pages/Home.dart';
import 'package:lab_a_7/pages/School.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    const Center(child: Home()),
    const Center(child: Alarm()),
    const Center(child: Business()),
    const Center(child: School())
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Navigation Bar"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 19,
          unselectedItemColor: Colors.black,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Alarm"),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: "Business"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "School")
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
