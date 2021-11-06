import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int soundName){
    final player = AudioCache();
    player.play('note$soundName.wav');
  }

  Expanded soundColor({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(

        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        }, child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundColor(color: Colors.red, soundNumber: 1),
              soundColor(color: Colors.orange, soundNumber: 2),
              soundColor(color: Colors.yellow, soundNumber: 3),
              soundColor(color: Colors.green, soundNumber: 4),
              soundColor(color: Colors.teal, soundNumber: 5),
              soundColor(color: Colors.blue, soundNumber: 6),
              soundColor(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
