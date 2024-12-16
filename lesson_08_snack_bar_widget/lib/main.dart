import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(Icons.thumb_up),
          SizedBox(width: 10),
          Text(
            "Hey I am a Snackbar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
      duration: Duration(seconds: 5),
      backgroundColor: Colors.blue,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldMessenger(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Snack Bar Example"),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                _showSnackBar(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(20),
              ),
              child: Text(
                "Notification Message",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
