import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:xml2json/xml2json.dart';
import 'scraper_bmkg.dart';
import 'main.dart';

class GempaPage extends StatefulWidget {
  @override
  _GempaPageState createState() => _GempaPageState();
}

class GempaService {
  call() async {
    Xml2Json xml2json = new Xml2Json();
    List dataGempa = [];
    try {
      var client = Client();
      Response response = await client.get(
          Uri.parse('https://data.bmkg.go.id/DataMKG/TEWS/gempaterkini.xml'));
      xml2json.parse(response.body);
      var jsondata = xml2json.toGData();
      var data = json.decode(jsondata);
      for (var i = 0; i < 5; i++) {
        dataGempa.add(data['Infogempa']['gempa'][i]['Tanggal'][r'$t']);
        dataGempa.add(data['Infogempa']['gempa'][i]['Jam'][r'$t']);
        dataGempa.add(data['Infogempa']['gempa'][i]['Lintang'][r'$t']);
        dataGempa.add(data['Infogempa']['gempa'][i]['Bujur'][r'$t']);
        dataGempa.add(data['Infogempa']['gempa'][i]['Magnitude'][r'$t']);
        dataGempa.add(data['Infogempa']['gempa'][i]['Wilayah'][r'$t']);
        dataGempa.add(data['Infogempa']['gempa'][i]['Potensi'][r'$t']);
      }
      //print(dataGempa);
      //dataGempa.add(data['Infogempa']['gempa'][0]['Tanggal'][r'$t']);
    } catch (e) {
      print(e);
    }
    return dataGempa;
  }
}

class _GempaPageState extends State<GempaPage> {
  var gempaGet = GempaService();

  @override
  void initState() {
    super.initState();
    gempaGet();
  }

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
              child: Text('GEMPA',
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
                      'gempa berkekuatan Magnitude\npada 29 Juni jam 14.35\ndi 59 kilometer baratlaut TAHUNA KEP.SANGIHE SULUT. \n 2550 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'fira sans',
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
                      'gempa berkekuatan 5.1 Magnitude\npada 28 Juni jam 08.56\ndi 58 kilometer tenggara KAB-KUPANG-NTT. \n2464  kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'fira sans',
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
                      'gempa berkekuatan 5.3 Magnitude\npada 28 Juni jam 05.15\ndi 55 kilometer baratdaya GUNUNG-KIDUL. \n1082  kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'fira sans',
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
                      'gempa berkekuatan 5.1 Magnitude\npada 28 Juni jam 04.19\ndi 186 kilometer timurlaut MalukuTenggaraBarat. \n2965  kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'fira sans',
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
                      'gempa berkekuatan 5.0 Magnitude\npada 27 Juni jam 22.56\ndi 50 kilometer baratdaya MUKOMUKO-BENGKULU. \n525 kilometer dari anda\nTidak berpotensi Tsunami',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'fira sans',
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
