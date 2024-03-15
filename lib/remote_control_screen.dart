import 'package:flutter/material.dart';

class RemoteControlScreen extends StatefulWidget {
  @override
  _RemoteControlScreenState createState() => _RemoteControlScreenState();
}

class _RemoteControlScreenState extends State<RemoteControlScreen> {
  double _speed = 0.0;

  void _setSpeed(double value) {
    setState(() {
      _speed = value;
    });
  }

  void _moveForward() {
    // Code to move the toy forward
  }

  void _turnLeft() {
    // Code to turn the toy left
  }

  void _turnRight() {
    // Code to turn the toy right
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Device'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image or Logo
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/boat2.png', // Replace 'assets/logo.png' with your image path
                width: 150.0,
                height: 150.0,
              ),
            ),
            // Speed Slider
            Slider(
              value: _speed,
              min: 0,
              max: 2,
              divisions: 3,
              label: _speed.toString(),
              onChanged: _setSpeed,
            ),
            // Forward Button
            ElevatedButton(
              onPressed: _moveForward,
              child: Text('Forward'),
              style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  ),
            ),
            // Left and Right Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _turnLeft,
                  child: Text('Left'),
                  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  ),
                ),
                ElevatedButton(
                  onPressed: _turnRight,
                  child: Text('Right'),
                 style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
