import 'package:flutter/material.dart';
import 'package:b_lind/home.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffc00),
      body: Stack(
        children: [
          Center(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'InfoBMKG-PVI',
                    style: TextStyle(
                        fontFamily: 'fauna one',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.black),
                  ),
                  Text(
                    'InfoBMKG for People with\nVision Impairments\n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'fauna one',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Image(
                    image: AssetImage('images/BMKG.png'),
                    width: 153,
                    height: 106,
                  ),
                ],
              ),
            ),
          ),
          Center(
              child: Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(10),
            child: Text(
              'by Aruya',
              style: TextStyle(
                  fontFamily: 'Museo Moderno',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ))
        ],
      ),
    );
  }
}
