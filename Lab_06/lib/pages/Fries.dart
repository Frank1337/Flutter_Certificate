import 'package:flutter/material.dart';

class Fries extends StatelessWidget {
  const Fries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('WOW Pizza'),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Facebook");
                },
                child: Image.asset("images/facebook.png",
                    fit: BoxFit.contain, height: 30)),
            const SizedBox(width: 10),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Twitter");
                },
                child: Image.asset("images/twitter.png",
                    fit: BoxFit.contain, height: 30)),
          ],
        ),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            OverflowBar(
              spacing: 5,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "VPizza");
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    side: WidgetStateProperty.resolveWith<BorderSide>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) {
                        return const BorderSide(color: Colors.red);
                      }
                      return const BorderSide(color: Colors.transparent);
                    }),
                  ),
                  child: const Text(
                    'Vegetable Pizza',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "ChPizza");
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    side: WidgetStateProperty.resolveWith<BorderSide>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) {
                        return const BorderSide(color: Colors.red);
                      }
                      return const BorderSide(color: Colors.transparent);
                    }),
                  ),
                  child: const Text(
                    'Cheese Pizza',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "Fries");
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    side: WidgetStateProperty.resolveWith<BorderSide>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) {
                        return const BorderSide(color: Colors.red);
                      }
                      return const BorderSide(color: Colors.transparent);
                    }),
                  ),
                  child: const Text(
                    'Fries',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  Image.asset("images/Fries.png",
                      fit: BoxFit.contain, height: 300),
                  const Text(
                    "Our crumbling Fries! You could be insane and drop it on your pizza!!!",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
