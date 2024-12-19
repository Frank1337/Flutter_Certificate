import 'package:flutter/material.dart';

class FirebaseService extends StatefulWidget {
  const FirebaseService({super.key});

  @override
  State<FirebaseService> createState() => _FirebaseServiceState();
}

class _FirebaseServiceState extends State<FirebaseService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Service'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: const Text(
            'Welcome to Firebase Services',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
