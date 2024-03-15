import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // Dark grey background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo image
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/boat2.png', // Replace 'assets/logo.png' with your image path
              width: 150.0,
              height: 150.0,
            ),
          ),
          // Get Started button
          ElevatedButton(
            onPressed: () {
              // Action to perform when the button is pressed
              print('Get Started button pressed');
              Navigator.pushNamed(context, '/remote_control');
            },
            child: Text('Get Started'),
          style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
    ),
  ),
),

        
        ],
      ),
    );
  }
}
