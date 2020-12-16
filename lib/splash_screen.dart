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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'B-LIND',
              style: TextStyle(
                  fontFamily: 'Museo Moderno',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 56,
                  color: Colors.black),
            ),
            Image(
              image: AssetImage('images/BMKG.png'),
              width: 153,
              height: 106,
            ),
            Text(
              'by Aruya',
              style: TextStyle(
                  fontFamily: 'Museo Moderno',
                  fontSize: 30,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
