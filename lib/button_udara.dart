import 'package:b_lind/page_udara.dart';

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
      child: new Semantics(
        container: true,
        label: 'tombol informasi kualitas udara',
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 30),
          height: heightButton,
          width: widthButton,
          decoration: BoxDecoration(
              color: (isPressed) ? Colors.grey : Color(0xfffffc00),
              borderRadius: BorderRadius.circular(51),
              border: Border.all(color: Colors.black, width: 1.5)),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UdaraPage();
              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('images/air_pollute.png')),
                ExcludeSemantics(
                  child: new Text(
                    'KUALITAS\nUDARA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Museo Moderno',
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
