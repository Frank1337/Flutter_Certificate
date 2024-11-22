import 'package:flutter/material.dart';

main() {
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
  var city = ["London", "Paris", "New York", "Tokyo", "Sydney"];

  var firstCity = "London";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Lesson 06: Buttons',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            backgroundColor: Colors.blueAccent),
        body: SafeArea(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
              child: Wrap(
                direction: Axis.vertical,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 20.0,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: OverflowBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all<Color>(Colors.blue),
                          ),
                          child: const Text("Flights"),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all<Color>(Colors.blue),
                          ),
                          child: const Text("Hotels"),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all<Color>(Colors.blue),
                          ),
                          child: const Text("Cars"),
                        )
                      ],
                    ),
                  ),
                  const SafeArea(
                    child: Text(
                      "Welcome to Franks Buttons App",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 25.0),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                      shadowColor: Colors.red,
                      elevation: 5,
                    ),
                    onPressed: () {
                      print('elevated Button Pressed');
                    },
                    child: const Text(
                      'Elevated Button',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print('Icon Button Pressed');
                    },
                    icon: const Icon(Icons.volume_up),
                    tooltip: "Increase volume by 10",
                  ),
                  const Text("Sound"),
                  TextButton(
                    onPressed: () {
                      print('Text Button Pressed');
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.greenAccent),
                      shadowColor: WidgetStateProperty.all<Color>(Colors.black),
                      elevation: WidgetStateProperty.all<double>(5),
                      overlayColor: WidgetStateProperty.all<Color>(Colors.red),
                      surfaceTintColor:
                          WidgetStateProperty.all<Color>(Colors.red),
                      animationDuration: const Duration(milliseconds: 10000),
                    ),
                    child: const Text(
                      'Text Button',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  DropdownButton<String>(
                    items: city.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(
                          dropDownStringItem,
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newUserValue) {
                      setState(() {
                        firstCity = newUserValue ?? "London";
                      });
                    },
                    value: firstCity,
                    icon: const Icon(Icons.access_alarm),
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                      backgroundColor: Colors.yellow,
                    ),
                    dropdownColor: Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          shape: WidgetStateProperty.all<OutlinedBorder>(
                              const StadiumBorder())),
                      onPressed: () {
                        print('Outlined Button Pressed');
                      },
                      child: const Text('Outlined Button')),
                ],
              ),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating Action Button Pressed');
          },
          shape: const CircleBorder(eccentricity: 0.0),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          child: const Icon(Icons.phone),
        ),
      ),
    );
  }
}
