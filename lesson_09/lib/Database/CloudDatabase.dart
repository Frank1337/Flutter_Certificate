import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CloudDatabase extends StatefulWidget {
  const CloudDatabase({super.key});

  @override
  State<CloudDatabase> createState() => _CloudDatabaseState();
}

class _CloudDatabaseState extends State<CloudDatabase> {
  List<Widget> dataListWidget(AsyncSnapshot snapshot) {
    return snapshot.data.docs.map<Widget>((document) {
      return ListTile(
        title: Text(document['Name']),
        subtitle: Text(document['City']),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloud Database'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('customers').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading data'));
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            return ListView(
              children: dataListWidget(snapshot),
            );
          }
        },
      ),
    );
  }
}
