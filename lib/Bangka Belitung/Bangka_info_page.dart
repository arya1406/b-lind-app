import 'package:flutter/material.dart';

class BangkaInfoPage extends StatefulWidget {
  @override
  _BangkaInfoPageState createState() => _BangkaInfoPageState();
}

class _BangkaInfoPageState extends State<BangkaInfoPage> {
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
                label: '',
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
                    onTap: () {},
                    child: Text(
                        'Pada pukul 12.00 hari ini\ncuaca cerah dengan suhu 29 derajat, kelembaban 67% dan kecepatan angin 10 kilometer perjam ke tenggara',
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
                        'Pada pukul 18.00 hari ini\ncuaca berawan dengan suhu 27 derajat, kelembaban 69% dan kecepatan angin 7 kilometer perjam ke tenggara',
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
                        'Pada pukul 00.00 besok hari \ncuaca hujan dengan suhu 25 derajat, kelembaban 90% dan kecepatan angin 15 kilometer perjam ke timur',
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
                        'Pada pukul 06.00 besok hari\ncuaca cerah dengan suhu 26 derajat, kelembaban 85% dan kecepatan angin 10 kilometer perjam ke tenggara',
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
                        'Pada pukul 12.00 besok hari\ncuaca cerah dengan suhu 29 derajat, kelembaban 67% dan kecepatan angin 10 kilometer perjam ke tenggara',
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
                        'Pada pukul 18.00 besok hari \ncuaca cerah dengan suhu 28 derajat, kelembaban 77% dan kecepatan angin 4 kilometer perjam ke tenggara',
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
                        'Pada pukul 00.00 lusa \ncuaca cerah dengan suhu 25 derajat, kelembaban 87% dan kecepatan angin 10 kilometer perjam ke tenggara',
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
                        'Pada pukul 06.00 lusa\ncuaca cerah dengan suhu 29 derajat, kelembaban 67% dan kecepatan angin 10 kilometer perjam ke tenggara',
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
                      EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xfffffc00),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                        'Pada pukul 12.00 lusa\ncuaca cerah dengan suhu 29 derajat, kelembaban 67% dan kecepatan angin 10 kilometer perjam ke tenggara',
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
        ));
  }
}
