import 'package:aqua_clean_app/aqua_clean.dart';
import 'package:flutter/material.dart';
// import 'remote_control_screen.dart'; // Import the new
import 'pick_and_dump.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
        fontFamily: 'Roboto',
      ),
      home: const AquaClean(),

      // initialRoute: '/', // Initial route is the splash screen

      routes: {
        // '/': (context) => SplashScreen(), // Define route for the splash screen
        // '/remote_control': (context) =>
        //     RemoteControlScreen(), // Define route for the remote control screen
        '/pick_and_dump': (context) =>
            PickupDumpPage(), // Define route for the pick and dump screen
      },
    );
  }
}
