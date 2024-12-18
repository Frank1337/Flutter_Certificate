import 'package:flutter/material.dart';

class RoomsPanel extends StatefulWidget {
  const RoomsPanel({super.key});

  @override
  State<RoomsPanel> createState() => _RoomsPanelState();
}

class _RoomsPanelState extends State<RoomsPanel> {
  List<NewPanelListItem> panelListItems = <NewPanelListItem>[
    NewPanelListItem(
      isExpanded: false,
      header: const Image(
        height: 80,
        width: 160,
        image: AssetImage('images/1bed.jpg'),
      ),
      selection: 'King Room',
      body: 'A room with a king-sized bed',
    ),
    NewPanelListItem(
      isExpanded: false,
      header: const Image(
        height: 80,
        width: 160,
        image: AssetImage('images/2beds.jpg'),
      ),
      selection: 'Double Room',
      body: 'A room assigned to two people',
    ),
    NewPanelListItem(
      isExpanded: false,
      header: const Image(
        height: 80,
        width: 160,
        image: AssetImage('images/3beds.jpg'),
      ),
      selection: 'Family Room',
      body: 'A room assigned to three or four people',
    ),
  ];

  late ListView _listCriteria;

  @override
  Widget build(BuildContext context) {
    _listCriteria = ListView(
      children: [
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  panelListItems[index].isExpanded =
                      !panelListItems[index].isExpanded;
                });
              },
              children: panelListItems.map((NewPanelListItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      leading: item.header,
                      title: Text(
                        item.selection,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: Text(
                    item.body,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                );
              }).toList(),
            )),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        title: const Text(
          'Room List',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: _listCriteria,
      persistentFooterButtons: [
        OverflowBar(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class NewPanelListItem {
  bool isExpanded;
  final Widget header;
  final String selection;
  final String body;

  NewPanelListItem({
    required this.isExpanded,
    required this.header,
    required this.selection,
    required this.body,
  });
}
