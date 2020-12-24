import 'package:flutter/material.dart';

class UdaraPage extends StatefulWidget {
  @override
  _UdaraPageState createState() => _UdaraPageState();
}

class _UdaraPageState extends State<UdaraPage> {
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
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Kualitas Udara di wilayah \nCibeureum Sehat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Semantics(
            container: true,
            label: '',
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text(
                    'Kualitas Udara di wilayah \nKemayoran Kurang Sehat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Semantics(
            container: true,
            label: '',
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Kualitas Udara di wilayah \nKototabang Sehat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Semantics(
            container: true,
            label: '',
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Kualitas Udara di wilayah \nMedan Sehat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Semantics(
            container: true,
            label: '',
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Kualitas Udara di wilayah \nMuarateweh Sedang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Semantics(
            container: true,
            label: '',
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text(
                    'Kualitas Udara di wilayah \nPalembang Kurang Sehat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Semantics(
            container: true,
            label: '',
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text(
                    'Kualitas Udara di wilayah \nPangkalanbun Kurang Baik',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Semantics(
            container: true,
            label: '',
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Kualitas Udara di wilayah \nSampit Baik',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Museo Moderno',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
