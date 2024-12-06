import 'package:flutter/material.dart';

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
          title: const Text("Datatable widget"),
          foregroundColor: Colors.blue,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            child: DataTable(
              columns: const [
                DataColumn(label: Text("Car Make")),
                DataColumn(label: Text("Model")),
                DataColumn(label: Text("Price")),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Text("Honda")),
                    DataCell(Text("2010")),
                    DataCell(Text("5000")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("Honda")),
                    DataCell(Text("2011")),
                    DataCell(Text("6000")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("Honda")),
                    DataCell(Text("2012")),
                    DataCell(Text("7000")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
