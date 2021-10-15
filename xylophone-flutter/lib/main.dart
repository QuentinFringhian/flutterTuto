import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var tilesColor = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.green[900],
    Colors.blue,
    Colors.purple,
  ];

  Expanded creatTile({int tileNumber, Color color}) => Expanded(
        child: FlatButton(
            color: color,
            onPressed: () => AudioCache().play('note$tileNumber.wav')),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // ignore: sdk_version_ui_as_code
              for (int i = 1; i <= 7; i++)
                creatTile(tileNumber: i, color: tilesColor[i - 1])
            ],
          ),
        ),
      ),
    );
  }
}
