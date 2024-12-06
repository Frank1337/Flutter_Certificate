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
  int? _sortColumnIndex;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Table Lab"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: DataTable(
            sortColumnIndex: _sortColumnIndex,
            sortAscending: false,
            columns: [
              DataColumn(
                label: Text("Car Make"),
                numeric: false,
                onSort: (i, b) {
                  setState(
                    () {
                      carData.sort((a, b) => a.CarMake.compareTo(b.CarMake));
                      _sortColumnIndex = 0;
                    },
                  );
                },
              ),
              DataColumn(
                label: Text("Model"),
                numeric: false,
                onSort: (i, b) {
                  setState(
                    () {
                      carData.sort((a, b) => a.Model.compareTo(b.Model));
                      _sortColumnIndex = 1;
                    },
                  );
                },
              ),
              DataColumn(
                label: const Text("Price"),
                numeric: true,
                onSort: (i, b) {
                  setState(
                    () {
                      carData.sort((a, b) => a.Price.compareTo(b.Price));
                      _sortColumnIndex = 2;
                    },
                  );
                },
              ),
            ],
            rows: carData
                .map(
                  (x) => DataRow(
                    cells: [
                      DataCell(Text(x.CarMake)),
                      DataCell(Text(x.Model)),
                      DataCell(Text(x.Price.toString())),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class Car {
  String CarMake;
  String Model;
  double Price;

  Car({required this.CarMake, required this.Model, required this.Price});
}

var carData = <Car>[
  Car(CarMake: "Honda", Model: "2021", Price: 35000.0),
  Car(CarMake: "Toyota", Model: "2011", Price: 6000.0),
  Car(CarMake: "BMW", Model: "2010", Price: 9000.0),
];
