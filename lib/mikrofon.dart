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
        child: Semantics(
          container: true,
          label: 'tombol mikrofon',
          child: Material(
              borderRadius: BorderRadius.circular(400),
              elevation: (isPressed) ? 5 : 10,
              color: (isPressed) ? Colors.grey : Color(0xfffffc00),
              child: InkWell(
                  borderRadius: BorderRadius.circular(400),
                  onTap: () {},
                  child: Image(
                    image: AssetImage('images/mic.png'),
                    //semanticLabel: 'Tombol Mikrofon',
                  ))),
        ));
  }
}
