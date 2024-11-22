import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String firstName;
  const Screen2({super.key, required this.firstName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
        title: Text(firstName),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Return'),
        ),
      ),
    );
  }
}
