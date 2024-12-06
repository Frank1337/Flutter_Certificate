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
          title: const Text("Bottom Navigation Bar App"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Text("Home Page"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          selectedFontSize: 15,
          unselectedFontSize: 12,
          backgroundColor: Colors.blue,
          iconSize: 30,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: "Alarm"),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: "Business"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          ],
        ),
      ),
    );
  }
}
