import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: [
              createButton(color:Colors.red,audio:1),
              createButton(color:Colors.blue,audio:2),
              createButton(color:Colors.purple,audio:3),
              createButton(color:Colors.teal,audio:4),
              createButton(color:Colors.yellow,audio:5),
              createButton(color:Colors.orangeAccent,audio:6),
              createButton(color:Colors.green,audio:7),
            ],
          ),
        ),
      ),
    );
  }

 Expanded createButton({Color color, int audio} ) {

    return Expanded(
      child: FlatButton(
        minWidth: double.infinity,
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('notes$audio.wav');
        },
        child: null,
      ),
    );
  }
}
