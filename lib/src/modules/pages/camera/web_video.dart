import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewCamera extends StatefulWidget {
  final String url;
  final String title;
  const WebViewCamera({
    Key? key,
    required this.url,
    required this.title,
  }) : super(key: key);

  @override
  WebViewCameraState createState() => WebViewCameraState();
}

class WebViewCameraState extends State<WebViewCamera> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SizedBox(
        width: double.maxFinite,
        height: 200,
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.url,
        ),
      ),
    );
  }
}
