import 'package:b_lind/page_gempa.dart';
import 'package:flutter/material.dart';
import 'package:b_lind/home.dart';

class ButtonGempa extends StatefulWidget {
  @override
  _ButtonGempaState createState() => _ButtonGempaState();
}

class _ButtonGempaState extends State<ButtonGempa> {
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
        child: new Semantics(
          container: true,
          label: 'informasi gempa bumi',
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 50),
            height: heightButton,
            width: widthButton,
            decoration: BoxDecoration(
                color: (isPressed) ? Colors.grey : Color(0xfffffc00),
                borderRadius: BorderRadius.circular(51),
                border: Border.all(color: Colors.black, width: 1.5)),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GempaPage();
                }));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('images/earthquake.png')),
                  ExcludeSemantics(
                    child: Text(
                      'gEMPA',
                      style: TextStyle(
                          fontFamily: 'Museo Moderno',
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
