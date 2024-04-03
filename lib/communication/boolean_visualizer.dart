import 'package:flutter/material.dart';

class BooleanVisualizer extends StatefulWidget {
  const BooleanVisualizer({super.key, required this.isBottleDetected});
  final bool isBottleDetected;
  @override
  State<BooleanVisualizer> createState() => _BooleanVisualizerState();
}

class _BooleanVisualizerState extends State<BooleanVisualizer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: widget.isBottleDetected ? Colors.green : Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
