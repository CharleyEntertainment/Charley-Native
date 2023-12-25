import 'package:flutter/material.dart';
import 'webview_screen.dart'; // WebViewScreen import

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // WebViewScreen으로 이동
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const WebViewScreen()),
                );
              },
              child: const Text('캐릭터 선택하기'),
            ),
          ],
        ),
      ),
    );
  }
}
