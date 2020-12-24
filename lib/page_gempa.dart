import 'package:flutter/material.dart';

class GempaPage extends StatefulWidget {
  @override
  _GempaPageState createState() => _GempaPageState();
}

class _GempaPageState extends State<GempaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Color(0xfffffc00),
            title: Container(
              alignment: Alignment.center,
              child: Text('gEMPA',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Museo Moderno',
                      fontSize: 45,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        body: ListView(
          children: [
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.5 Magnitude\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.3 Magnitude\npada 9 November jam 16.30\ndi 1201 kilometer baratdaya NIASBARAT-SUMUT. \n1490  kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 6.5 Magnitude\npada 7 November jam 06.41\ndi 21 kilometer baratlaut MamujuTengah-SULBAR. \n1742  kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.2 Magnitude\npada 6 November jam 01.20\ndi 92 kilometer timurlaut MalukuBaratDaya. \n2835  kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.5 Magnitude\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.5 Magnitude\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.5 Magnitude\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.5 Magnitude\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.5 Magnitude\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Semantics(
              container: true,
              label: '',
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                      'gempa berkekuatan 5.5 Magnitude\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
