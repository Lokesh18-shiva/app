import 'package:flutter/material.dart';
import 'package:flutter_twilio_programmable_video/flutter_twilio_programmable_video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String twilioAccessToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImN0eSI6InR3aWxpby1mcGE7dj0xIn0.eyJqdGkiOiJTSzk1YzA0OGE4MGEyZTYzMTAzOTY3ZmJiYTNhN2Q3M2Y2LTE3MDMwNzE5MDEiLCJpc3MiOiJTSzk1YzA0OGE4MGEyZTYzMTAzOTY3ZmJiYTNhN2Q3M2Y2Iiwic3ViIjoiQUM5ZjFmMjg5MmIyNzdiYzM0ZWJkN2I0OThmYmIwNGFjMCIsImV4cCI6MTcwMzA3NTUwMSwiZ3JhbnRzIjp7ImlkZW50aXR5Ijoia2FyIiwidmlkZW8iOnt9fX0.CD0md4mhmdxYaDZlcBVR-qcCC5_j1uZLRCIULmazp3k'; // Replace with your Twilio Access Token

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Twilio Video Call Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _joinRoom();
            },
            child: Text('Join Video Call'),
          ),
        ),
      ),
    );
  }

  void _joinRoom() async {
    try {
      await FlutterTwilioProgrammableVideo.connectToRoom(
        accessToken: twilioAccessToken,
        roomName: 'kar', // Replace with your desired room name
        options: TwilioRoomOptions(
          enableNetworkQuality: true,
          videoTracks: [LocalVideoTrack(isEnabled: true)],
          audioTracks: [LocalAudioTrack(isEnabled: true)],
        ),
      );
    } catch (e) {
      print('Error joining room: $e');
    }
  }
}
