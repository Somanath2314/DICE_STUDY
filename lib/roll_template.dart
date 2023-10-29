import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class roll_template extends StatefulWidget {
  const roll_template({super.key});
  @override
  State<StatefulWidget> createState() {
    return _roll_templateState();
  }
}

class _roll_templateState extends State<roll_template> {
  int activeCount = 2;

  void roll_dice() {
    setState(() {
      activeCount = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
            child: Image.asset(
          'assets/images/dice-$activeCount.png',
          width: 250,
        )),
        SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: roll_dice,
          child: Text(
            'Roll Dice',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        )
      ],
    );
  }
}
