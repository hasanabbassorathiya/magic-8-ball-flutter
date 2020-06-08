import 'dart:math';

import 'package:flutter/material.dart';

void main() =>
    runApp(
      Ball(),
    );

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo.shade900,
        ),
        body: BBchallenge(),
      ),
    );
  }
}

class BBchallenge extends StatefulWidget {
  @override
  _BBchallengeState createState() => _BBchallengeState();
}

class _BBchallengeState extends State<BBchallenge> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
