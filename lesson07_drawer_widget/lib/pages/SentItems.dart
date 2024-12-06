import 'package:flutter/material.dart';

class SentItems extends StatelessWidget {
  const SentItems({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Sent Items"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 75,
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(2),
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  "Frank Mail",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.mail,
                color: Colors.blue,
              ),
              title: const Text(
                "Inbox",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              subtitle: const Text("This is my subtitle"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () => Navigator.pushNamed(context, "mail"),
            ),
            ListTile(
              leading: const Icon(
                Icons.send,
                color: Colors.blue,
              ),
              title: const Text(
                "Sent Items",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              subtitle: const Text("This is my subtitle"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () => Navigator.pushNamed(context, "sentItems"),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              subtitle: const Text("This is my subtitle"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () => Navigator.pushNamed(context, "profile"),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              subtitle: const Text("This is my subtitle"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () => print("Settings tapped"),
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_today,
                color: Colors.blue,
              ),
              title: const Text(
                "Calendar",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              subtitle: const Text("This is my subtitle"),
              trailing: const Icon(Icons.arrow_right),
              onTap: () => print("Calendar tapped"),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Sent Items",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    ));
  }
}
