import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class BottleDetection extends StatefulWidget {
  const BottleDetection({super.key, required this.client});
  final MqttServerClient client;
  @override
  State<BottleDetection> createState() => _BottleDetectionState();
}

class _BottleDetectionState extends State<BottleDetection> {
  @override
  Widget build(BuildContext context) {
    // stream bulder for bottle detection obtained from the robot, mqtt server
    return StreamBuilder(
      stream: widget.client.updates,
      builder: (BuildContext context,
          AsyncSnapshot<List<MqttReceivedMessage<MqttMessage>>> snapshot) {
        if (snapshot.hasData) {
          final MqttPublishMessage recMess =
              snapshot.data![0].payload as MqttPublishMessage;
          final String message =
              MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
          return Text(message);
        } else {
          return const Text('No data');
        }
      },
    );
  }
}
