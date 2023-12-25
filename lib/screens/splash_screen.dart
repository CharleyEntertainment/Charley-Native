// ignore_for_file: dead_code, duplicate_ignore, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'webview_screen.dart';
import 'signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      bool showWebView = false;
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (_) =>
                  showWebView ? const WebViewScreen() : const SignupScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('찰리엔터'),
      ),
    );
  }
}
