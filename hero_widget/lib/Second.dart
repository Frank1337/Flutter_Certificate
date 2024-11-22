import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('Pizza'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Center(
          child: Hero(
            tag: 'imageHero',
            child: Image(
              image: AssetImage('images/pizza1.png'),
              width: 400,
              height: 400,
            ),
          ),
        ),
      ),
    );
  }
}
