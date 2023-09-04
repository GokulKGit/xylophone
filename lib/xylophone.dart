import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  //audio provider (AudioPlayer)
  void soundNote(int soundNote) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$soundNote.wav'),
    );
  }

  //method of the button
  Expanded xylophoneKey(
      {required Color color, required String text, required int note}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          soundNote(note);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Material App is Create Complete Material Ui
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold is a Container which contain all WIDGETS`12
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "My Xylophone",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            xylophoneKey(
              color: Colors.red,
              text: "RED",
              note: 1,
            ),
            xylophoneKey(
              color: Colors.orange,
              text: "ORANGE",
              note: 2,
            ),
            xylophoneKey(
              color: Colors.yellow,
              text: "YELLOW",
              note: 3,
            ),
            xylophoneKey(
              color: Colors.green,
              text: "GREEN",
              note: 4,
            ),
            xylophoneKey(
              color: Colors.lightGreen,
              text: "LIGHT GREEN",
              note: 5,
            ),
            xylophoneKey(
              color: Colors.blue,
              text: "BLUE",
              note: 6,
            ),
            xylophoneKey(
              color: Colors.purple,
              text: "PURPLE",
              note: 7,
            ),
          ],
        ),
      ),
    );
  }
}
