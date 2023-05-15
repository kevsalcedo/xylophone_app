import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded showPiano({required Color pianoColor, required int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(pianoColor),
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                showPiano(pianoColor: Colors.red, noteNumber: 1),
                showPiano(pianoColor: Colors.orange, noteNumber: 2),
                showPiano(pianoColor: Colors.yellow, noteNumber: 3),
                showPiano(pianoColor: Colors.green, noteNumber: 4),
                showPiano(pianoColor: Colors.lightGreen, noteNumber: 5),
                showPiano(pianoColor: Colors.blue, noteNumber: 6),
                showPiano(pianoColor: Colors.purple, noteNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
