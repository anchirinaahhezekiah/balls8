import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Magic Ball'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Balls(),
    ),
  ));
}

class Balls extends StatefulWidget {
  const Balls({super.key});

  @override
  State<Balls> createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int ballChange = 4;

  void changeBall() {
    ballChange = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    changeBall();
                    print('Image clicked');
                  },
                );
              },
              child: Image.asset('images/ball$ballChange.png'),
            ),
          ),
        ],
      ),
    );
  }
}
