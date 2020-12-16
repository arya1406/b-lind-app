import 'dart:math';
import 'home.dart';
import 'package:flutter/material.dart';

class ButtonCuaca extends StatefulWidget {
  @override
  _ButtonCuacaState createState() => _ButtonCuacaState();
}

class _ButtonCuacaState extends State<ButtonCuaca> {
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
                    child: Image(image: AssetImage("images/weather.png"))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
