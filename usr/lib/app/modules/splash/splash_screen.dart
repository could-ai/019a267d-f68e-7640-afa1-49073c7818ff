import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulate a delay for the splash screen
    Future.delayed(const Duration(seconds: 3), () {
      // In the future, we will navigate to the login or home screen
      // based on the user's authentication status.
      // For now, we'll just print a message.
      print("Splash screen finished.");
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 150),
            const SizedBox(height: 24),
            Text(
              'Food Delivery App',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
