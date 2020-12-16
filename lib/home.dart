import 'package:flutter/material.dart';

bool isPressed = false;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heightButton = 300;
  double widthButton = 165;
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
                GestureDetector(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 50),
                            height: heightButton,
                            width: widthButton,
                            decoration: BoxDecoration(
                                color: Color(0xfffffc00),
                                borderRadius: BorderRadius.circular(51),
                                border: Border.all(
                                    color: Colors.black, width: 1.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage('images/id-en.png')),
                                Text(
                                  'BAHASA',
                                  style: TextStyle(
                                      fontFamily: 'Museo Moderno',
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 50),
                            height: heightButton,
                            width: widthButton,
                            decoration: BoxDecoration(
                                color: Color(0xfffffc00),
                                borderRadius: BorderRadius.circular(51),
                                border: Border.all(
                                    color: Colors.black, width: 1.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image:
                                        AssetImage('images/air_pollute.png')),
                                Text(
                                  'KUALITAS\nUDARA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Museo Moderno',
                                      fontSize: 29,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 50),
                            height: heightButton,
                            width: widthButton,
                            decoration: BoxDecoration(
                                color: Color(0xfffffc00),
                                borderRadius: BorderRadius.circular(51),
                                border: Border.all(
                                    color: Colors.black, width: 1.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(
                                    image: AssetImage('images/earthquake.png')),
                                Text(
                                  'gEMPA',
                                  style: TextStyle(
                                      fontFamily: 'Museo Moderno',
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 50),
                            height: heightButton,
                            width: widthButton,
                            decoration: BoxDecoration(
                                color: Color(0xfffffc00),
                                borderRadius: BorderRadius.circular(51),
                                border: Border.all(
                                    color: Colors.black, width: 1.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage('images/weather.png')),
                                Text(
                                  'CUACA',
                                  style: TextStyle(
                                      fontFamily: 'Museo Moderno',
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            )));
  }
}
