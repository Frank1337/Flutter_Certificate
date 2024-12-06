import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListTile Widget"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main title"),
              subtitle: const Text("Sub title"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
              onLongPress: () => print("onLongPress Action"),
              dense: false,
              selected: true,
              enabled: true,
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text("Main title"),
              subtitle: const Text("Sub title"),
              trailing: const Icon(Icons.share),
              onTap: () => print("onTap Action"),
              onLongPress: () => print("onLongPress Action"),
              dense: false,
              selected: true,
              enabled: true,
            )
          ],
        ),
      ),
    );
  }
}
