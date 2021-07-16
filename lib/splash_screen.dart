import 'dart:convert';

import 'package:b_lind/page_gempa.dart';
import 'package:flutter/material.dart';
import 'package:b_lind/home.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:async'; // Contains HTML parsers to generate a Document object
//import 'package:html/dom.dart' as dom;

import 'tutorialPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      _sendDataGrabbing(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffc00),
      body: Stack(
        children: [
          Center(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'InfoBMKG-PVI',
                    style: TextStyle(
                        fontFamily: 'fauna one',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.black),
                  ),
                  Text(
                    'InfoBMKG for People with\nVision Impairments\n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'fauna one',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Image(
                    image: AssetImage('images/BMKG.png'),
                    width: 153,
                    height: 106,
                  ),
                ],
              ),
            ),
          ),
          Center(
              child: Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(10),
            child: Text(
              'by Aruya',
              style: TextStyle(
                  fontFamily: 'Museo Moderno',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ))
        ],
      ),
    );
  }
}

void _sendDataGrabbing(BuildContext context) async {
  Xml2Json xml2json = new Xml2Json();
  var dataGempa = [];
  List<List<String>> listDataGempa = [[], [], [], [], []];
  try {
    var client = Client();
    Response response = await client.get(
        Uri.parse('https://data.bmkg.go.id/DataMKG/TEWS/gempaterkini.xml'));
    xml2json.parse(response.body);
    var jsondata = xml2json.toGData();
    var data = json.decode(jsondata);

    for (var i = 0; i < 5; i++) {
      listDataGempa[i].add(data['Infogempa']['gempa'][i]['Magnitude'][r'$t']);
      listDataGempa[i].add(data['Infogempa']['gempa'][i]['Tanggal'][r'$t']);
      listDataGempa[i].add(data['Infogempa']['gempa'][i]['Jam'][r'$t']);
      listDataGempa[i].add(data['Infogempa']['gempa'][i]['Wilayah'][r'$t']);
      listDataGempa[i].add(data['Infogempa']['gempa'][i]['Potensi'][r'$t']);
      //dataGempa[i].add(listDataGempa);
    }
    dataGempa = listDataGempa;

    //dataGempa.add(data['Infogempa']['gempa'][0]['Tanggal'][r'$t']);
  } catch (e) {
    print(e);
  }
  //? Make API call to web
  var client = Client();
  Response response = await client.get(Uri.parse(
      'https://www.bmkg.go.id/kualitas-udara/informasi-partikulat-pm10.bmkg'));

  //?Use Html Parser and query selector
  var document = parse(response.body);
  List links = document.querySelectorAll('div.pm10');
  List looks = [];
  List statusAll = [];
  List<Map<String, dynamic>> linkMap = [];
  List<Map<String, dynamic>> wilMap = [];
  List<Map<String, dynamic>> statMap = [];

  var parseData;
  var statusData;
  for (var link in links) {
    linkMap.add({'script': link.text});
  }
  for (int i = 0; i < linkMap.length; i++) {
    var data = linkMap[i]['script'];
    var kotaIndex = data.indexOf("('#container");
    var petikIndex = data.indexOf("').highcharts");
    var kotaSub = data.substring(kotaIndex + 12, petikIndex);
    looks.add(kotaSub);
    //print(looks);
    for (var j = 0; j < 24; j++) {
      var dataIndex = data.indexOf("['$j',");
      if (dataIndex == -1) {
        if (parseData <= 50.0) {
          statusData = 'Baik';

          //print(statusData);
        }
        if (parseData > 50.0 && parseData <= 150) {
          statusData = 'Sedang';
          //print(statusData);
        }
        statusAll.add(statusData);
        break;
      }
      if (j >= 10) {
        var dataSub = data.substring(dataIndex + 7, dataIndex + 10);
        parseData = double.parse(dataSub);
        assert(parseData is double);
        //print(parseData);
      } else {
        var dataSub = data.substring(dataIndex + 6, dataIndex + 9);
        parseData = double.parse(dataSub);
        assert(parseData is double);
      }
    }
  }
  for (var look in looks) {
    wilMap.add({'wilayah': look});
  }
  for (var statusAlls in statusAll) {
    statMap.add({'status': statusAlls});
  }
  //print(statusAll);
  wilMap.addAll(statMap);
  List dataUdara = [];
  for (var i = 0; i < wilMap.length; i++) {
    dataUdara.add(wilMap[i].values.toList());
  }

  List dataToSend = dataGempa;
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => TutorialPage(
          dataGempa: dataToSend,
          dataUdara: dataUdara,
        ),
      ));
}
