import 'dart:async';
import 'dart:io';

class UdpVideoClient {
  final String host;
  final int port;

  RawDatagramSocket? _socket;
  StreamController<List<int>> _videoStreamController = StreamController<List<int>>();

  UdpVideoClient(this.host, this.port);

  Future<void> start() async {
    _socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);
    _socket!.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.read) {
        Datagram? datagram = _socket!.receive();
        if (datagram != null) {
          _videoStreamController.add(datagram.data); // Add video data to stream
        }
      }
    });
    _socket!.send('start_video_stream'.codeUnits, InternetAddress(host), port);
  }

  void stop() {
    _socket?.close();
    _videoStreamController.close(); // Close the video stream controller
  }

  Stream<List<int>> get videoStream => _videoStreamController.stream; // Define getter for video stream
}
