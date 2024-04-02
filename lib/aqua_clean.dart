import 'package:aqua_clean_app/communication/bottle_detection.dart';
import 'package:aqua_clean_app/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class AquaClean extends StatefulWidget {
  const AquaClean({super.key, required this.client});
  final MqttServerClient client;

  @override
  State<AquaClean> createState() => _AquaCleanState();
}

class _AquaCleanState extends State<AquaClean> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Add the video widget
        const VideoWidget(),
        // Add the bottle detection widget
        BottleDetection(client: widget.client),
      ],
    );
  }
}
