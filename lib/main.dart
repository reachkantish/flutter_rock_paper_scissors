import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(RPSGame());
}

class RPSGame extends StatefulWidget {
  @override
  _RPSGameState createState() => _RPSGameState();
}

class _RPSGameState extends State<RPSGame> {
  int leftbutton = 1;
  int rightbutton = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Rock, Paper, Scissors"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    setState(
                      () {
                        leftbutton = Random().nextInt(3) + 1;
                        rightbutton = Random().nextInt(3) + 1;
                      },
                    );
                  },
                  child: Image.asset(
                    "images/file$leftbutton.png",
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    setState(
                      () {
                        rightbutton = Random().nextInt(3) + 1;
                        leftbutton = Random().nextInt(3) + 1;
                      },
                    );
                  },
                  child: Image.asset("images/file$rightbutton.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
