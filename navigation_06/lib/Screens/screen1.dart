import 'package:flutter/material.dart';
import 'package:navigation_06/Screens/screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Screen2(firstName: "Navigated from Screen 1");
            }));
          },
          child: Text('Go to Screen 2'),
        ),
      ),
    );
  }
}
