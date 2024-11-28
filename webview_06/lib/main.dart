import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(Uri.parse("https://www.google.com"))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lesson06: Web View'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
