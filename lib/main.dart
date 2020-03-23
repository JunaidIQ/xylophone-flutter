import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int x){
    final player = AudioCache();
    player.play('note$x.wav');
  }
  Expanded buildKey(Color color,int sound){
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(sound);
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade800,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.redAccent, 1),
              buildKey(Colors.orangeAccent, 2),
              buildKey(Colors.yellowAccent, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
              Text("Developed by Junaid Iqbal",style: TextStyle(color: Colors.white70,letterSpacing: 3.0),textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
