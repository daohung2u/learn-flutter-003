import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int key) {
    final audio = AudioCache();
    audio.play('note$key.wav');
  }

  Expanded getExpanded({Color color, int key}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(key);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getExpanded(color: Colors.red, key: 1),
            getExpanded(color: Colors.green, key: 2),
            getExpanded(color: Colors.blue, key: 3),
            getExpanded(color: Colors.orange, key: 4),
            getExpanded(color: Colors.yellow, key: 5),
            getExpanded(color: Colors.teal, key: 6),
            getExpanded(color: Colors.purple, key: 7),
          ],
        )),
      ),
    );
  }
}
