import 'home.dart';
import 'package:flutter/material.dart';
import 'page_cuaca.dart';

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
      child: new Semantics(
        container: true,
        label: 'tombol informasi chuacha',
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
                return PageCuaca();
              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('images/weather.png')),
                ExcludeSemantics(
                  child: Text(
                    'CUACA',
                    style: TextStyle(
                        fontFamily: 'Museo Moderno',
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
