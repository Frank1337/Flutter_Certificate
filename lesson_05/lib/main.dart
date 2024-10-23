import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        appBar: AppBar(
            title: const Text('Layout'),
            centerTitle: true,
            backgroundColor: Colors.green[500]),
        body: SafeArea(
            child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          color: Colors.orange[200],
          child: const Row(
            children: <Widget>[
              Image(
                  image: AssetImage('images/happy_pumpkin.png'),
                  height: 100,
                  width: 100),
              SizedBox(
                width: 15,
              ),
              Text(
                'vegetable pumpkin :D',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

void main() {
  runApp(
    const MyApp(),
  );
}
