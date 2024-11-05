import 'package:flutter/material.dart';

main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Lesson 06: Buttons',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            backgroundColor: Colors.blueAccent),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: SafeArea(
                  child: Text(
                    "Welcome to Franks Buttons App",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 25.0),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  print('Raised Button Pressed');
                },
                child: const Text('Raised Button'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating Action Button Pressed');
          },
          shape: const CircleBorder(eccentricity: 0.0),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          child: const Icon(Icons.phone),
        ),
      ),
    );
  }
}
