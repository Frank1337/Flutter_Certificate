import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GroupButtonController controllerCheckboxes;
  late GroupButtonController controllerRadioButtons;

  final _checkBoxButtons = ["Cheese", "Tomato", "Mushroom", "Onion"];
  final _radioButtons = ["Small", "Medium", "Large"];

  @override
  void initState() {
    super.initState();
    controllerCheckboxes = GroupButtonController();
    controllerRadioButtons = GroupButtonController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Checkbox & Radio Buttons"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              const Text(
                "Select your pizza toppings:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
              const SizedBox(height: 10),
              const Text(
                "Select your pizza size:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
              GroupButton(
                buttons: const [10, 20, 30, 40, 50, 60, 70, 80, 90, 100],
                options: GroupButtonOptions(
                  selectedShadow: const [],
                  selectedTextStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.pink[900],
                  ),
                  selectedColor: Colors.pink[100],
                  unselectedShadow: const [],
                  unselectedColor: Colors.amber[100],
                  unselectedTextStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.amber[900],
                  ),
                  selectedBorderColor: Colors.pink[900],
                  unselectedBorderColor: Colors.amber[900],
                  borderRadius: BorderRadius.circular(100),
                  spacing: 10,
                  runSpacing: 10,
                  groupingType: GroupingType.wrap,
                  direction: Axis.horizontal,
                  buttonHeight: 60,
                  buttonWidth: 60,
                  mainGroupAlignment: MainGroupAlignment.start,
                  crossGroupAlignment: CrossGroupAlignment.start,
                  groupRunAlignment: GroupRunAlignment.start,
                  textAlign: TextAlign.center,
                  textPadding: EdgeInsets.zero,
                  alignment: Alignment.center,
                  elevation: 0,
                ),
                isRadio: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
