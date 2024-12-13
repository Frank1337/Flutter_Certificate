import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime date1 = DateTime.now();
  TimeOfDay time1 = TimeOfDay.now();

  TimeOfDay? picked;

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(context: context, initialTime: time1);
    if (picked != null && picked != time1) {
      setState(() {
        time1 = picked!;
        print(time1.toString());
      });
    }
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date1,
        firstDate: DateTime(1960),
        lastDate: DateTime(2030));
    if (picked != null && picked != date1) {
      setState(() {
        date1 = picked;
        print(date1.toString());
      });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Date Picker"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    Text(
                      ('${date1.year} - ${date1.month} - ${date1.day}')
                          .toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          selectDate(context);
                        },
                        icon: const Icon(Icons.date_range))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      ('${time1.hour} : ${time1.minute}').toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          selectTime(context);
                        },
                        icon: const Icon(Icons.access_time))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
