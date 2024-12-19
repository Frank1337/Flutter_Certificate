import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseService extends StatefulWidget {
  const FirebaseService({super.key});

  @override
  State<FirebaseService> createState() => _FirebaseServiceState();
}

class _FirebaseServiceState extends State<FirebaseService> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Service'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _auth.signOut();
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to Firebase Services',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
