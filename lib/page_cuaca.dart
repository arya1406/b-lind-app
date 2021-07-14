import 'package:b_lind/Aceh/Aceh_kab_page.dart';
import 'package:flutter/material.dart';
//import 'scraping_test';

class PageCuaca extends StatefulWidget {
  @override
  _PageCuacaState createState() => _PageCuacaState();
}

class _PageCuacaState extends State<PageCuaca> {
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
                      fontFamily: 'fira sans',
                      fontSize: 45,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AcehKabPage();
                  }));
                },
                child: Text('Provinsi \nAceh',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nBali',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nBangka Belitung',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nBanten',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nBengkulu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nDI Yogyakarta',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nDKI Jakarta',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nGorontalo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nJambi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nJawa Barat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nJawa Tengah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nJawa Timur',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nKalimantan Barat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nKalimantan Selatan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nKalimantan Tengah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nKalimantan Timur',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nKalimantan Utara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nKepulauan Riau',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nLampung',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nMaluku',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nMaluku Utara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nNusa Tenggara Barat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nNusa Tenggara Timur',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nPapua',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nPapua Barat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nRiau',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSulawesi Barat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSulawesi Selatan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSulawesi Tengah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSulawesi Tenggara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSulawesi Utara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSumatera Barat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSumatera Selatan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xfffffc00),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Text('Provinsi \nSumatera Utara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'fira sans',
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
