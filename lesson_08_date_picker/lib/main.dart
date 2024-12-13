import 'package:flutter/cupertino.dart';
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
  var rating = 0.0;
  bool _switchValue = false;

  void _onChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

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

  void displayAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: const Text(
        'Android ATC Pizza Store Offer',
        style: TextStyle(color: Colors.blue),
      ),
      content: const Text(
        'Get the 2nd Pizza for \$5 Now !',
      ),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            print("Thanks, I got it.");
          },
          child: const Text('Yes'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('No'),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  void displayCupertinoAlertDialog(BuildContext context) {
    var alertDialog = CupertinoAlertDialog(
      title: const Text(
        'Android ATC Pizza Store Offer',
        style: TextStyle(color: Colors.blue),
      ),
      content: const Text(
        'Get the 2nd Pizza for \$5 Now !',
      ),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.transparent,
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            print("Thanks, I got it.");
          },
          child: const Text('Yes'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.transparent,
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('No'),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
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
                ),
                Container(
                  width: 300,
                  child: Slider(
                    value: rating,
                    onChanged: (newRating) {
                      setState(() => rating = newRating);
                    },
                    min: 0,
                    max: 100,
                    divisions: 4,
                    label: '$rating',
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Rating Value: '
                      '$rating',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Switch(
                      value: _switchValue,
                      onChanged: _onChanged,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Switch Value: '
                      '$_switchValue',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        displayAlertDialog(context);
                      },
                      child: const Text(
                        'Alert Dialog',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        displayCupertinoAlertDialog(context);
                      },
                      child: const Text(
                        'Cupertino Alert Dialog',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
