import 'package:flutter/material.dart';

void main() {
  runApp(const lab5());
}

class lab5 extends StatelessWidget {
  const lab5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Franks Pizza Place',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.deepOrangeAccent,
                  elevation: 20,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width: 15),
                      Image.asset(
                        'images/pizza_vegetarian.png',
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Vegetable Pizza',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.deepOrangeAccent,
                  elevation: 20,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width: 15),
                      Image.asset(
                        'images/pizza_cheese.png',
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Cheese Pizza',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.deepOrangeAccent,
                  elevation: 20,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width: 15),
                      Image.asset(
                        'images/pommes.png',
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Box of Fries',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
