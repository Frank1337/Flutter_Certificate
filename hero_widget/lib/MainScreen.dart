import 'package:flutter/material.dart';

import 'Second.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('Pizza Order'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return Second();
              },
            ),
          );
        },
        child: const Hero(
          tag: 'imageHero',
          child: Image(
            image: AssetImage('images/pizza1.png'),
            width: 120,
            height: 120,
          ),
        ),
      ),
    );
  }
}
