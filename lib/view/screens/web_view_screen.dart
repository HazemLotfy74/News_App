import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web_View_Screen extends StatelessWidget {
  String? url;

  Web_View_Screen({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Web View"),
      ) ,
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
