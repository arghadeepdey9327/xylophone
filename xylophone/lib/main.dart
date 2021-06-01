// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Xyl(),
      ),
    ),
  );
}

class Xyl extends StatefulWidget {
  @override
  _XylState createState() => _XylState();
}

class _XylState extends State<Xyl> {
  final p = new AudioCache();
  void pla(int a) {
    p.play('note$a.wav');
  }

  Widget fin(int a, Color b) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          pla(a);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(b),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        fin(1, Colors.red),
        fin(2, Colors.yellow),
        fin(3, Colors.green),
        fin(4, Colors.blue),
        fin(5, Colors.grey),
        fin(6, Colors.amber),
        fin(7, Colors.deepOrange)
      ]),
    );
  }
}
