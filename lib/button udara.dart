import 'dart:math';
import 'home.dart';
import 'package:flutter/material.dart';

class ButtonUdara extends StatefulWidget {
  @override
  _ButtonUdaraState createState() => _ButtonUdaraState();
}

class _ButtonUdaraState extends State<ButtonUdara> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.27,
            height: MediaQuery.of(context).size.width * 0.27,
            child: Transform.rotate(
              angle: pi / 4,
              child: Material(
                color: (isPressed) ? Color(0xfffffc00) : Colors.grey,
                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.grey[700],
                elevation: (isPressed) ? 15 : 5,
                child: Transform.rotate(
                    angle: -pi / 4,
                    child: Image(image: AssetImage("images/air_pollute.png"))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
