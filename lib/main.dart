import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// chmod 600 ~/.netrc
// to fix cocoapod error, i used the command above

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: ElevatedButton(
            child: const Text('Play'),
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('note1.wav'));
            },
          ),
        ),
      ),
    );
  }
}
