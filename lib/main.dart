import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('drum$soundNumber.wav', volume: 1.0);
  }

  Widget buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(style: BorderStyle.solid),
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(child: Text('Electronic Drum')),
        ),
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Row(
                  children: [
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.blue, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.orange, soundNumber: 4),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.blue, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.orange, soundNumber: 4),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.blue, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.orange, soundNumber: 4),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.blue, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.orange, soundNumber: 4),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.blue, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.orange, soundNumber: 4),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.blue, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.orange, soundNumber: 4),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    buildKey(color: Colors.red, soundNumber: 1),
                    buildKey(color: Colors.blue, soundNumber: 2),
                    buildKey(color: Colors.yellow, soundNumber: 3),
                    buildKey(color: Colors.orange, soundNumber: 4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
