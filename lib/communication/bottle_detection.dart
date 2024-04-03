import 'package:aqua_clean_app/communication/boolean_visualizer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class BottleDetection extends StatefulWidget {
  const BottleDetection({super.key});

  @override
  State<BottleDetection> createState() => _BottleDetectionState();
}

class _BottleDetectionState extends State<BottleDetection> {
  @override
  Widget build(BuildContext context) {
    // stream bulder for bottle detection obtained from the firebase real time database
    final dataStream =
        FirebaseDatabase.instance.ref().child('bottle_detection').onValue;
    return StreamBuilder(
      stream: dataStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData && !snapshot.hasError) {
            DataSnapshot data = snapshot.data!.snapshot.children.last;
            return BooleanVisualizer(
                isBottleDetected:
                    data.value is bool ? data.value as bool : false);
          } else {
            return Text("Error: ${snapshot.error}");
          }
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
