import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// chmod 600 ~/.netrc
// to fix cocoapod error, i used the command above

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                // Ocupa todo o espaço no mainaxis (collumn)
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    // minimumSize: const Size(double.infinity, 110),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[900],
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[900],
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[600],
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[900],
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[900],
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                  child: const Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
