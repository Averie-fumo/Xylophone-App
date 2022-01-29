import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlayer(int num) {
    AudioCache player = AudioCache(prefix: 'assets/');
    player.play('note$num.wav');
  }

  Expanded buildButton({Color color, int num}) {
    return Expanded(
      child: RaisedButton(
          color: color,
          onPressed: () {
            soundPlayer(num);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildButton(color: Colors.red, num: 1),
            buildButton(color: Colors.orange, num: 2),
            buildButton(color: Colors.yellowAccent, num: 3),
            buildButton(color: Colors.lightGreenAccent, num: 4),
            buildButton(color: Colors.lightBlue, num: 5),
            buildButton(color: Colors.indigo, num: 6),
            buildButton(color: Colors.purple, num: 7),
          ]),
        ),
      ),
    );
  }
}
