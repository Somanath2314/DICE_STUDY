import 'package:dice/roll_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bg extends StatelessWidget {
  bg(this.fcolor, this.scolor, {super.key});
  Color fcolor;
  Color scolor;
  void roll_dice() {
    //
  }
  @override
  Widget build(context) {
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: [fcolor, scolor])),
      child: Center(
        child: roll_template(),
      ),
    );
  }
}
