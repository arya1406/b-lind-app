import 'package:b_lind/button%20cuaca.dart';
import 'package:b_lind/button%20gempa.dart';
import 'package:b_lind/button%20pengaturan.dart';
import 'package:flutter/material.dart';

import 'button udara.dart';

bool isPressed = false;
double heightButton = 300;
double widthButton = 165;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TabBar myTabbar = TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        //border: Border(bottom: BorderSide(color: Colors.black, width: 3)),
        color: Color(0xffbebc23),
      ),
      tabs: [
        Tab(
            child: Container(
          width: 100,
          child: Image(
            height: 73,
            image: AssetImage('images/mic.png'),
            semanticLabel: 'menu mikrofon',
          ),
        )
            /*Text(
              'MIKROFON',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'fira sans', fontSize: 25),
            ),
            */
            ),
        Tab(
          child: Container(
              width: 100,
              child: Image(
                image: AssetImage('images/weather.png'),
                semanticLabel: 'menu informasi lainnya',
              )
              /*Text(
              'INFORMASI',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'fira sans', fontSize: 25),
            ),*/
              ),
        ),
      ],
    );
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffffc00),
          title: Center(
            child: Text(
              'B-LIND',
              style: TextStyle(
                  fontFamily: 'Museo Moderno',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          bottom: PreferredSize(
              child: Container(
                color: Color(0xfffffc00),
                child: myTabbar,
              ),
              preferredSize: Size.fromHeight(myTabbar.preferredSize.height)),
        ),
        body: TabBarView(children: [
          Container(
            margin: EdgeInsets.all(30),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Klik Tombol Mikrofon',
                  style: TextStyle(
                      fontFamily: 'fira sans',
                      fontSize: 35,
                      color: Colors.black),
                ),
                Semantics(
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
                )
              ],
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ButtonOption(), ButtonUdara()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ButtonGempa(), ButtonCuaca()],
              )
            ],
          ),
        ]),
      ),
    ));
  }
}
