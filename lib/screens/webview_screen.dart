// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController _controller;
  bool _useSafeAreaTop = true;

  void setStatusBarHeight(double height) {
    _controller
        .evaluateJavascript("window.setStatusBarHeight(${height.toString()});");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: _useSafeAreaTop,
        child: WebView(
          initialUrl: 'http://172.30.1.19:3000',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
          onPageFinished: (String url) {
            double statusBarHeight = MediaQuery.of(context).padding.top;
            setStatusBarHeight(statusBarHeight);
          },
          onPageStarted: (String url) {
            setState(() {
              _useSafeAreaTop = !url.contains('/home');
            });
          },
        ),
      ),
    );
  }
}
