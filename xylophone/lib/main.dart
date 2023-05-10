import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buildKey({required Color color, required int soundNumber }){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.redAccent, soundNumber:1),
              buildKey(color: Colors.orange, soundNumber:2),
              buildKey(color: Colors.yellow, soundNumber:3),
              buildKey(color: Colors.green, soundNumber:4),
              buildKey(color: Colors.blue, soundNumber:5),
              buildKey(color: Colors.indigo, soundNumber:6),
              buildKey(color: Colors.purple, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
