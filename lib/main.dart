import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  play(int num) {
    final player = AudioPlayer();
    player.play(AssetSource("note$num.wav"));
  }

  Widget _soundKey({required Color color, required int sound}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        onPressed: () {
          play(sound);
        },
        child: Container(
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          _soundKey(color: Colors.red, sound: 1),
          _soundKey(color: Colors.orange, sound: 2),
          _soundKey(color: Colors.yellow, sound: 3),
          _soundKey(color: Colors.green, sound: 4),
          _soundKey(color: Colors.cyan, sound: 5),
          _soundKey(color: Colors.blue, sound: 6),
          _soundKey(color: Colors.purple, sound: 7),
        ]),
      ),
    );
  }
}
