import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int x = 1;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful and Stateless Widgets'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const Text('Welcome to my app'),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    x = 2;
                  });
                },
                child: const Text('Click me'),
              ),
              Image.asset("images/image$x.png"),
            ],
          ),
        ),
      ),
    );
  }
}
