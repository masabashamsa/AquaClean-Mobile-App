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
        title: const Text('Control Device'),
      ),
      body: Column(
        children: [
          // SizedBox(
          //     height: 300,
          //     width: MediaQuery.of(context).size.width * 0.9,
          //     child: const VideoView()),

            Expanded(
           child: Center(
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   //_buildVideoWidget(),
                   const SizedBox(height: 20),
                  const Expanded(child: BottleDetection()),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                     children: [                       ElevatedButton(
                         onPressed: () {},
                         child: const Icon(Icons.arrow_upward),
                         style: ElevatedButton.styleFrom(
                           shape: const CircleBorder(),
                           padding: const EdgeInsets.all(30),
                         ),
                      ),
                     ],
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ElevatedButton(
                       onPressed: () {},
                         child: const Icon(Icons.arrow_back),
                         style: ElevatedButton.styleFrom(
                           shape: const CircleBorder(),
                           padding: const EdgeInsets.all(30),
                         ),
                      ),
                       const SizedBox(width: 100), // Adjust spacing between buttons
                       ElevatedButton(
                         onPressed: () {},
                        child: const Icon(Icons.stop),
                         style: ElevatedButton.styleFrom(
                           shape: const CircleBorder(),
                           padding: const EdgeInsets.all(30),
                         ),
                       ),
                       const SizedBox(width: 100), // Adjust spacing between buttons
                       ElevatedButton(
                         onPressed: () {},
                         child: const Icon(Icons.arrow_forward),
                         style: ElevatedButton.styleFrom(
                           shape: const CircleBorder(),
                           padding: const EdgeInsets.all(30),
                         ),
                       ),
                    ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ElevatedButton(
                         onPressed: () {},
                         child: const Icon(Icons.arrow_downward),
                         style: ElevatedButton.styleFrom(
                           shape: const CircleBorder(),
                           padding: const EdgeInsets.all(30),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ),

         

           Container(
            width: double.infinity,
             margin: const EdgeInsets.all(16),
             child: ElevatedButton(
               onPressed: () {
                 // Navigate to the PickupDumpPage when the button is pressed
                Navigator.pushNamed(context, '/pick_and_dump');
              },
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}
