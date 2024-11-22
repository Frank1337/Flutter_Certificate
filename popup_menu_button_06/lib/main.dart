import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lesson 06: PopupMenuButton'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: <Widget>[
            PopupMenuButton(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return item.choices.map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Hello guys and girls :-)")],
          ),
        ),
      ),
    );
  }

  void choiceAction(choice) {
    if (choice == item.Inbox) {
      print("Inbox");
    } else if (choice == item.SentItems) {
      print("Sent Items");
    } else if (choice == item.JunckEmail) {
      print("Junck E-mail");
    } else if (choice == item.SignOut) {
      print("Sign Out");
    }
  }
}

class item {
  static const Inbox = 'Inbox';
  static const SentItems = 'Sent Items';
  static const JunckEmail = 'Junck E-mail';
  static const SignOut = 'Sign Out';

  static const List choices = [Inbox, SentItems, JunckEmail, SignOut];
}
