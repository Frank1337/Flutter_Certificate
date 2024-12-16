import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Row(
        children: [
          Icon(Icons.thumb_up, color: Colors.white),
          SizedBox(width: 10),
          Text('Yay! A SnackBar!'),
        ],
      ),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.blue,
    );

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _showSnackBar(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
