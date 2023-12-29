import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Ask me something"),
      ),
      body: MagicBallStatefulWidget(),
    );
  }
}

class MagicBallStatefulWidget extends StatefulWidget {
  @override
  State<MagicBallStatefulWidget> createState() =>
      _MagicBallStatefulWidgetState();
}

class _MagicBallStatefulWidgetState extends State<MagicBallStatefulWidget> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              number = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$number.png')
        ),
      ],
    );
  }
}
