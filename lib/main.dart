import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    
    void changedDice() {
      setState(() {
        rightDiceNumber = Random().nextInt(6) + 1;
        leftDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () => changedDice(),
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () => changedDice(),
          )),
        ],
      ),
    );
  }
}
