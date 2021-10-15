import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          title: const Center(
            child: Text('I Am Poor'),
          ),
        ),
        body: const Center(
          child: Image(
            image: AssetImage("images/ojama.png"),
          ),
        ),
      ),
    ),
  );
}
