import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "Screen0");
              },
              child: const Text('Go to Screen 0'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "Screen1");
              },
              child: const Text('Go to Screen 1'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.yellow),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "Screen2");
              },
              child: const Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
