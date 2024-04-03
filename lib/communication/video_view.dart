import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  VlcPlayerController? _videoPlayerController;
  final String url = 'https://10.34.0.214:8080';

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VlcPlayerController.network(
      url,
      autoInitialize: true,
      hwAcc: HwAcc.auto, // Hardware acceleration for better performance
      autoPlay: true,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() {
    _videoPlayerController?.pause();
    _videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VlcPlayer(
      controller: _videoPlayerController!,
      aspectRatio: 16 / 9, // Adjust based on your camera's aspect ratio
      placeholder: const Center(child: CircularProgressIndicator()),
    );
  }
}
