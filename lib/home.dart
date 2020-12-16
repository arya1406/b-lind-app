import 'package:b_lind/button%20cuaca.dart';
import 'package:b_lind/button%20gempa.dart';
import 'package:b_lind/button%20pengaturan.dart';
import 'package:b_lind/button%20udara.dart';
import 'package:b_lind/mikrofon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'button.dart';
import 'dart:async';

bool isPressed = false;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TabBar myTabbar = TabBar(
      indicator: BoxDecoration(
        color: Color(0xfffffc00),
      ),
      tabs: [
        Tab(
          child: Image(image: AssetImage('images/mic.png')),
        ),
        Tab(
          child: Image(image: AssetImage('images/weather.png')),
        )
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
                    preferredSize:
                        Size.fromHeight(myTabbar.preferredSize.height)),
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
                      Material(
                          borderRadius: BorderRadius.circular(400),
                          elevation: 10,
                          color: Color(0xfffffc00),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(400),
                              splashColor: Colors.grey,
                              onTap: () {},
                              child: Image(
                                image: AssetImage('images/mic.png'),
                              )))
                    ],
                  )),
                ),
                Text('ini tab 2')
              ]),
            )));
  }
}
