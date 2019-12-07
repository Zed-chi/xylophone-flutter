import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(
            child: FlatButton(
              onPressed: (){
                final player = AudioCache();
                player.play("note1.wav");
              },
              child: Text("data"),
            ),
          ),
        ),
      ),
    );
  }
}
