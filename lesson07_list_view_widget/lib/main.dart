import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Widget"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
              selected: true,
            ),
            const Image(
              image: AssetImage("images/sofa.jpg"),
              height: 300,
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
              selected: true,
            ),
            const Image(
              image: AssetImage("images/sofa.jpg"),
              height: 300,
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
              selected: true,
            ),
            const Image(
              image: AssetImage("images/sofa.jpg"),
              height: 300,
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
              selected: true,
            ),
            const Image(
              image: AssetImage("images/sofa.jpg"),
              height: 300,
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Main Title"),
              subtitle: const Text("Subtitle"),
              trailing: const Icon(Icons.shopping_cart),
              onTap: () => print("onTap Action"),
              selected: true,
            ),
            const Image(
              image: AssetImage("images/sofa.jpg"),
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
