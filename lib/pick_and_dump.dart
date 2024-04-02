import 'package:flutter/material.dart';

class PickupDumpPage extends StatefulWidget {
  @override
  _PickupDumpPageState createState() => _PickupDumpPageState();
}

class _PickupDumpPageState extends State<PickupDumpPage> {
  double liftPercentage = 20;
  double dumpPercentage = 50;
  double grabPercentage = 30;

  void _onLiftSliderChanged(double value) {
    setState(() {
      liftPercentage = value;
    });
  }

  void _onDumpSliderChanged(double value) {
    setState(() {
      dumpPercentage = value;
    });
  }

  void _onGrabSliderChanged(double value) {
    setState(() {
      grabPercentage = value;
    });
  }

  void _lift() {
    // Code to lift the device
  }

  void _lower() {
    // Code to lower the device
  }

  void _dump() {
    // Code to dump the device
  }

  void _retract() {
    // Code to retract the device
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Control'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Lift Bottle
            _buildRow('Lift Bottle', liftPercentage, _onLiftSliderChanged),
            // Dump Bottles
            _buildRow('Dump Bottles', dumpPercentage, _onDumpSliderChanged),
            // Grab Bottle
            _buildRow('Grab Bottle', grabPercentage, _onGrabSliderChanged),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _lift,
                  child: const Text('Lift'),
                ),
                ElevatedButton(
                  onPressed: _lower,
                  child: const Text('Lower'),
                ),
                ElevatedButton(
                  onPressed: _dump,
                  child: const Text('Dump'),
                ),
                ElevatedButton(
                  onPressed: _retract,
                  child: const Text('Retract'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, double percentage, ValueChanged<double> onChanged) {
    return Row(
      children: [
        Expanded(child: Text(title)),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Slider(
            value: percentage,
            min: 0,
            max: 100,
            divisions: 10,
            onChanged: onChanged,
          ),
        ),
        Text('${percentage.toInt()}%'),
      ],
    );
  }
}
