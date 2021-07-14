import 'package:flutter/material.dart';

import 'Jambi_info_page.dart';

class JambiKabPage extends StatefulWidget {
  @override
  _JambiKabPageState createState() => _JambiKabPageState();
}

class _JambiKabPageState extends State<JambiKabPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              backgroundColor: Color(0xfffffc00),
              title: Container(
                alignment: Alignment.center,
                child: Text('CUACA',
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
                label: 'infromasi chuacha kabupaten aceh barat',
                child: Container(
                  margin:
                      EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xfffffc00),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return JambiInfoPage();
                      }));
                    },
                    child: Text('Kabupaten \nAceh Barat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontFamily: 'Museo Moderno',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Barat Daya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Besar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Jaya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Selatan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Singkil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Tamiang',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Tengah',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Tenggara',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Tenggara',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Timur',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nAceh Utara',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nBener Meriah',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nBireuen',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nGayo Lues',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nNagan Raya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nPidie',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nPidie Jaya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nSimeulue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kota \nBanda Aceh',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kota \nLangsa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kota \nLhokseumawe',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kota \nSabang',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xfffffc00),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text('Kota \nSabulussalam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'Museo Moderno',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ));
  }
}
