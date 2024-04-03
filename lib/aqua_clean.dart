import 'package:aqua_clean_app/communication/bottle_detection.dart';
// import 'package:aqua_clean_app/communication/video_view.dart';
// import 'package:aqua_clean_app/video_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class AquaClean extends StatefulWidget {
  const AquaClean({super.key});

  @override
  State<AquaClean> createState() => _AquaCleanState();
}

class _AquaCleanState extends State<AquaClean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aqua Clean'),
      ),
      body: const Column(
        children: [
          // SizedBox(
          //     height: 300,
          //     width: MediaQuery.of(context).size.width * 0.9,
          //     child: const VideoView()),
          Expanded(child: BottleDetection()),
        ],
      ),
    );
  }
}
