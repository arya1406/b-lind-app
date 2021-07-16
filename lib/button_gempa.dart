import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:b_lind/page_gempa.dart';
import 'package:flutter/material.dart';
import 'package:b_lind/home.dart';
import 'package:http/http.dart';
import 'package:xml2json/xml2json.dart';

class ButtonGempa extends StatefulWidget {
  @override
  _ButtonGempaState createState() => _ButtonGempaState();
}

class GempaService {
  final List dataGempa;

  Future gempa() async {
    Xml2Json xml2json = new Xml2Json();
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

      //dataGempa.add(data['Infogempa']['gempa'][0]['Tanggal'][r'$t']);
    } catch (e) {
      print(e);
    }
  }

  GempaService(this.dataGempa);
}

class _ButtonGempaState extends State<ButtonGempa> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        child: new Semantics(
          container: true,
          label: 'informasi gempa bumi',
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 50),
            height: heightButton,
            width: widthButton,
            decoration: BoxDecoration(
                color: (isPressed) ? Colors.grey : Color(0xfffffc00),
                borderRadius: BorderRadius.circular(51),
                border: Border.all(color: Colors.black, width: 1.5)),
            child: InkWell(
              onTap: () async {
                _sendDataGempa(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('images/earthquake.png')),
                  ExcludeSemantics(
                    child: Text(
                      'GEMPA',
                      style: TextStyle(
                          fontFamily: 'fauna one',
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

void _sendDataGempa(BuildContext context) async {
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

    //dataGempa.add(data['Infogempa']['gempa'][0]['Tanggal'][r'$t']);
  } catch (e) {
    print(e);
  }

  List dataToSend = dataGempa;
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GempaPage(
          dataGempa: dataToSend,
        ),
      ));
}
