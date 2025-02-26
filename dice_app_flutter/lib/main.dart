import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foxgram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee App"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollTheDices() {
    setState(() {
      this.leftDiceNumber = Random().nextInt(6) + 1;
      this.rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {
                this.rollTheDices();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$rightDiceNumber.png"),
              onPressed: () {
                this.rollTheDices();
              },
            ),
          ),
        ],
      ),
    );
  }
}
