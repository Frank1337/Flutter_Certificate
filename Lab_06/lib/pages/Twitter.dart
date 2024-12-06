import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    WebViewController webViewController = WebViewController()
      ..loadRequest(Uri.parse("https://www.twitter.com"))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('WOW Pizza'),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Facebook");
                },
                child: Image.asset("images/facebook.png",
                    fit: BoxFit.contain, height: 30)),
            const SizedBox(width: 10),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Twitter");
                },
                child: Image.asset("images/twitter.png",
                    fit: BoxFit.contain, height: 30)),
          ],
        ),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: WebViewWidget(controller: webViewController),
      ),
    );
  }
}
