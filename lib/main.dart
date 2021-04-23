import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildFunction({Color color, int toneSound,String colorName}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        child: Text(colorName),
        onPressed: () {
          sound(toneSound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54 ,
          title: Center(child: Text('XYLOPHONE')),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildFunction(color: Colors.red, toneSound: 1,colorName:'RED'),
              buildFunction(color: Colors.blue, toneSound: 2,colorName:'BLUE'),
              buildFunction(color: Colors.indigo, toneSound: 3,colorName:'INDIGO'),
              buildFunction(color: Colors.orange, toneSound: 4,colorName:'ORANGE'),
              buildFunction(color: Colors.green, toneSound: 5,colorName:'GREEN'),
              buildFunction(color: Colors.purple, toneSound: 6,colorName:'PURPLE'),
              buildFunction(color: Colors.pink, toneSound: 7,colorName:'PINK')
            ],
          ),
        ),
      ),
    );
  }
}
