import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Input Data"),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    const Text(
                      "Please enter the following information",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          'Full Name:',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 60, // Set a fixed height
                              child: TextField(
                                maxLengthEnforcement: MaxLengthEnforcement.none,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                autocorrect: true,
                                cursorColor: Colors.red,
                                decoration: InputDecoration(
                                  hintText: 'Enter your full name',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          'Email Address:',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 60, // Set a fixed height
                              child: TextField(
                                maxLengthEnforcement: MaxLengthEnforcement.none,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.done,
                                autocorrect: false,
                                cursorColor: Colors.red,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.email),
                                  hintText: 'Your email',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          'Password:',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 60, // Set a fixed height
                              child: TextField(
                                maxLengthEnforcement: MaxLengthEnforcement.none,
                                obscureText: true,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.done,
                                autocorrect: false,
                                cursorColor: Colors.red,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          'Telephone:',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 60, // Set a fixed height
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                textAlignVertical: TextAlignVertical.center,
                                autocorrect: false,
                                cursorColor: Colors.red,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
