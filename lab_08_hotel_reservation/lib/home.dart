import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GroupButtonController controllerRadioButtons;
  late GroupButtonController controllerCheckboxes;
  DateTime checkInDate = DateTime.now();
  DateTime checkOutDate = DateTime.now();
  int adult_number = 0;
  int children_number = 0;

  final _checkBoxButtons = [
    "Breakfast (10 USD/Day)",
    "Internet WiFi (5 USD/Day)",
    "Parking (5 USD/Day)",
    "Swimming Pool (10 USD/Day)"
  ];
  final _radioButtons = ["City View", "Sea View"];

  @override
  void initState() {
    super.initState();
    controllerCheckboxes = GroupButtonController();
    controllerRadioButtons = GroupButtonController();
  }

  Future<DateTime?> selectDate(
      BuildContext context, DateTime currentPickedDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: currentPickedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != currentPickedDate) {
      return picked;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text(
            'Hotel Reservation',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'images/entrance.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Check-In date:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${checkInDate.year}-${checkInDate.month}-${checkInDate.day}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.date_range,
                              color: Colors.deepOrangeAccent),
                          onPressed: () async {
                            final DateTime? pickedDate =
                                await selectDate(context, checkInDate);
                            if (pickedDate != null) {
                              setState(() {
                                checkInDate = pickedDate;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Check-Out date:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${checkOutDate.year}-${checkOutDate.month}-${checkOutDate.day}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.date_range,
                              color: Colors.deepOrangeAccent),
                          onPressed: () async {
                            final DateTime? pickedDate =
                                await selectDate(context, checkOutDate);
                            if (pickedDate != null) {
                              setState(() {
                                checkOutDate = pickedDate;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          child: Text(
                            "Adults:     $adult_number",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Slider(
                            value: adult_number.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                adult_number = newValue.toInt();
                              });
                            },
                            min: 0,
                            max: 6,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          child: Text(
                            "Children:  $children_number",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Slider(
                            value: children_number.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                children_number = newValue.toInt();
                              });
                            },
                            min: 0,
                            max: 6,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Extras:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    GroupButton(
                      controller: controllerCheckboxes,
                      buttons: _checkBoxButtons,
                      isRadio: false,
                      buttonIndexedBuilder: (selected, index, context) {
                        return Row(
                          children: [
                            Checkbox(
                              value: selected,
                              onChanged: (bool? value) {
                                if (!selected) {
                                  controllerCheckboxes.selectIndex(index);
                                } else {
                                  controllerCheckboxes.unselectIndex(index);
                                }
                              },
                            ),
                            Text(_checkBoxButtons[index]),
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "View:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    GroupButton(
                      controller: controllerRadioButtons,
                      buttons: _radioButtons,
                      isRadio: true,
                      buttonIndexedBuilder: (selected, index, context) {
                        return Row(
                          children: [
                            Radio(
                              value: index,
                              groupValue: controllerRadioButtons.selectedIndex,
                              onChanged: (Object? value) {
                                controllerRadioButtons.selectIndex(index);
                              },
                            ),
                            Text(_radioButtons[index]),
                          ],
                        );
                      },
                      onSelected: (value, index, isSelected) {
                        print(value);
                      },
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'RoomsPanel');
                            },
                            child: const Text(
                              'Check Rooms and Rates',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
