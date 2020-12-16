import 'package:flutter/material.dart';
import 'home.dart';

class MicButton extends StatefulWidget {
  MicButton({Key key}) : super(key: key);

  @override
  _MicButtonState createState() => _MicButtonState();
}

class _MicButtonState extends State<MicButton> {
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
          Positioned(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.width * 0.6,
            child: Material(
              color: (isPressed) ? Color(0xfffffc00) : Colors.grey,
              borderRadius: BorderRadius.circular(300),
              shadowColor: Colors.grey,
              elevation: (isPressed) ? 15 : 5,
              child: Image(image: AssetImage("images/mic.png")),
            ),
          ))
        ],
      ),
    );
  }
}
