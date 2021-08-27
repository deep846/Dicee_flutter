import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
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
  int LB = 1;
  int RB = 2;
  void changeDice() {
    setState(() {
      RB = Random().nextInt(6)+1;
      LB = Random().nextInt(6)+1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: TextButton(
                onLongPress: () {
                  print('please do not press long time on left button');
                },
                onPressed: () {
                  changeDice();
                },
                child: Image.asset(
                  'images/dice$LB.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(
                onLongPress: () {
                  print('please do not press long time on right button');
                },
                onPressed: () {
                  changeDice();
                },
                child: Image.asset(
                  'images/dice$RB.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
