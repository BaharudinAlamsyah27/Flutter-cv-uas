import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/seed.png',
                height: 100, width: 100), // Custom logo or image
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // Spinner widget
            const SizedBox(height: 10),
            const Text('Loading...',
                style: TextStyle(
                  fontSize: 16,
                )), // Loading text
          ],
        ),
      ),
    );
  }
}
