import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseService extends StatefulWidget {
  const FirebaseService({super.key});

  @override
  State<FirebaseService> createState() => _FirebaseServiceState();
}

class _FirebaseServiceState extends State<FirebaseService> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference database = FirebaseDatabase.instance
      .refFromURL(
          'https://fir-authentication-6a462-default-rtdb.europe-west1.firebasedatabase.app')
      .child('My_Service');

  void _sendData() {
    database
        .push()
        .set({'Name': 'John Doe', 'Country': 'USA', 'City': 'Denver'});
  }

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Welcome to Firebase Services',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => _sendData(),
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
