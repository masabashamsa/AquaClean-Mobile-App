import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key});

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Initialize the camera controller
    _controller = CameraController(
      const CameraDescription(
        name: '0',
        lensDirection: CameraLensDirection.back,
        sensorOrientation: 0,
      ),
      ResolutionPreset.medium,
    );
    // Initialize the controller future
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the camera controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the camera preview
          return CameraPreview(_controller);
        } else {
          // Otherwise, display a loading indicator
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
