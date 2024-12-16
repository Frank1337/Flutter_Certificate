import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<MyItem> _itemList = [
    MyItem(header: "Header 1", body: "Body 1"),
    MyItem(header: "Header 2", body: "Body 2"),
    MyItem(header: "Header 3", body: "Body 3"),
    MyItem(header: "Header 4", body: "Body 4")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Panel List"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _itemList[index].isExpanded = !_itemList[index].isExpanded;
                  });
                },
                children: _itemList.map((MyItem) {
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(MyItem.header),
                      );
                    },
                    body: Container(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(MyItem.body),
                    ),
                    isExpanded: MyItem.isExpanded,
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyItem {
  bool isExpanded;
  final String header;
  final String body;
  MyItem({this.isExpanded = false, required this.header, required this.body});
}
