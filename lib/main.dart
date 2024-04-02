import 'package:aqua_clean_app/aqua_clean.dart';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'remote_control_screen.dart'; // Import the new
import 'pick_and_dump.dart';

void main() {
  // raspberry pi mqtt server
  final MqttServerClient client = MqttServerClient('192.168.80.227', '');
  client.logging(on: true);
  client.connect('flutter_client');
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client});
  final MqttServerClient client;
  @override
  Widget build(BuildContext context) {
    client.subscribe('robot/bottle_detection', MqttQos.atLeastOnce);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AquaClean(client: client),

      // initialRoute: '/', // Initial route is the splash screen

      routes: {
        // '/': (context) => SplashScreen(), // Define route for the splash screen
        '/remote_control': (context) =>
            RemoteControlScreen(), // Define route for the remote control screen
        '/pick_and_dump': (context) =>
            PickupDumpPage(), // Define route for the pick and dump screen
      },
    );
  }
}
