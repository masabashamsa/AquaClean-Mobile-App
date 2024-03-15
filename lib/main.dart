import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'remote_control_screen.dart'; // Import the new 
import 'pick_and_dump.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/', // Initial route is the splash screen
      
      routes: {
        '/': (context) => SplashScreen(), // Define route for the splash screen
        '/remote_control': (context) => RemoteControlScreen(), // Define route for the remote control screen
        '/pick_and_dump': (context) => PickupDumpPage(), // Define route for the pick and dump screen
      },

    );
  }
}
