import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Note(1, Colors.green),
                Note(2, Colors.blue),
                Note(3, Colors.yellow),
                Note(4, Colors.orange),
                Note(5, Colors.teal),
                Note(6, Colors.red),
                Note(7, Colors.blueGrey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Note extends StatefulWidget {
  final int note;
  final Color color;
  const Note(this.note, this.color);

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note${this.widget.note}.wav');
        },
        color: this.widget.color,
        child: null,
      ),
    );
  }
}
