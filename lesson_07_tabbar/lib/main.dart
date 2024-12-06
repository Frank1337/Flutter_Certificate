import 'package:flutter/material.dart';
import 'package:lesson_07_tabbar/TabViewScreens/TabViewScreenHome.dart';
import 'package:lesson_07_tabbar/TabViewScreens/TabViewScreenOrders.dart';

import 'TabViewScreens/TabViewScreenUser.dart';

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
        title: const Text("Tab View App"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.blue,
                  indicatorColor: Colors.red,
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Arial"),
                  tabs: [
                    Tab(
                      text: "Home",
                    ),
                    Tab(
                      text: "Orders",
                    ),
                    Tab(
                      text: "Login",
                    )
                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      child: TabViewScreenHome(),
                    ),
                    Container(
                      child: TabViewScreenOrders(),
                    ),
                    Container(
                      child: TabViewScreenUser(),
                    ),
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
