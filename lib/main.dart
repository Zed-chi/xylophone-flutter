import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num){
    final player = AudioCache();
    player.play("note$num.wav");
  }

  Expanded BuildKey(int num){
    return Expanded(
        child: FlatButton(
        color: Colors.red,
        onPressed: (){playSound(num);},                  
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
            children: <Widget>[
              
              BuildKey(1),
              BuildKey(2),
              BuildKey(3),
              BuildKey(4),
              BuildKey(5),
              BuildKey(6),
              BuildKey(7),              

            ],
          ),
        ),
      ),
    );
  }
}