import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score App',
      home: DiceHome(),
    );
  }
}

class DiceHome extends StatefulWidget {
  const DiceHome({super.key});

  @override
  State<DiceHome> createState() => _DiceHomeState();
}

class _DiceHomeState extends State<DiceHome> {
  int diceNumber = 1;
  void diceChanger() {
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Changer",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Image.asset(
            "assets/$diceNumber.png",
            height: 250,
            width: 250,
          )),
          SizedBox(
            height: 20,
          ),
          MaterialButton(color: Colors.lightGreen,
            onPressed: diceChanger,
            child: Text(
              'Roll',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text('FlutterWithSafal'),
        ],
      ),
    );
  }
}
