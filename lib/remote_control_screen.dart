// import 'package:flutter/material.dart';
// //import 'video_widget.dart';
// import 'udp_video_client.dart';
// import 'dart:typed_data';

// class RemoteControlScreen extends StatefulWidget {
//   @override
//   _RemoteControlScreenState createState() => _RemoteControlScreenState();
// }

// class _RemoteControlScreenState extends State<RemoteControlScreen> {
//   double _speed = 0.0;
//   UdpVideoClient? _videoClient; //Declaring the video client

//   void _setSpeed(double value) {
//     setState(() {
//       _speed = value;
//     });
//   }

//   @override
//   void initstate(){
//     super.initState();
//     _initializeVideoClient();

//   }

//   Future<void> _initializeVideoClient() async {
//     _videoClient = UdpVideoClient('raspberry_pi_ip', 12345);
//     await _videoClient!.start(); //To start receiving the video data
//   }

//   @override
//   void dispose(){
//     _videoClient?.stop(); //Stop receving the video data when screen is disposed
//     super.dispose();
//   }

//   void _moveForward() {
//     // Code to move the toy forward
//   }

//   void _turnLeft() {
//     // Code to turn the toy left
//   }

//   void _turnRight() {
//     // Code to turn the toy right
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Control Device'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _buildVideoWidget(),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Icon(Icons.arrow_upward),
//                         style: ElevatedButton.styleFrom(
//                           shape: CircleBorder(),
//                           padding: EdgeInsets.all(30),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Icon(Icons.arrow_back),
//                         style: ElevatedButton.styleFrom(
//                           shape: CircleBorder(),
//                           padding: EdgeInsets.all(30),
//                         ),
//                       ),
//                       SizedBox(width: 100), // Adjust spacing between buttons
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Icon(Icons.stop),
//                         style: ElevatedButton.styleFrom(
//                           shape: CircleBorder(),
//                           padding: EdgeInsets.all(30),
//                         ),
//                       ),
//                       SizedBox(width: 100), // Adjust spacing between buttons
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Icon(Icons.arrow_forward),
//                         style: ElevatedButton.styleFrom(
//                           shape: CircleBorder(),
//                           padding: EdgeInsets.all(30),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Icon(Icons.arrow_downward),
//                         style: ElevatedButton.styleFrom(
//                           shape: CircleBorder(),
//                           padding: EdgeInsets.all(30),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             margin: EdgeInsets.all(16),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Navigate to the PickupDumpPage when the button is pressed
//                 Navigator.pushNamed(context, '/pick_and_dump');
//               },
//               child: Text('Next'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//  Widget _buildVideoWidget(){
//   return Container(
//     width: 320,
//     height: 240,
//     color: Colors.grey[300],

//   child: StreamBuilder<List<int>>(
//     stream: _videoClient?.videoStream, //Stream of video data from UDP
//     builder: (context, snapshot){
//       if(snapshot.hasData){
//         //Display video data if available
//         Uint8List imageData = Uint8List.fromList(snapshot.data!);
//         return Image.memory(imageData);
//         }
//         else{
//           //Placeholder widget when no video data is available
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//     },
//   ),
//   );
//  }
 

// }
