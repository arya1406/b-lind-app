import 'dart:convert'; // Contains the JSON encoder
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart'; // Contains a client for making API calls
import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
import 'package:html/dom.dart'; // Contains DOM related classes for extracting data from elements

Future udara() async {
  //? Make API call to web
  var client = Client();
  Response response = await client.get(Uri.parse(
      'https://www.bmkg.go.id/kualitas-udara/informasi-partikulat-pm10.bmkg'));

  //?Use Html Parser and query selector
  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('div.pm10');
  List<Map<String, dynamic>> linkMap = [];
  for (var link in links) {
    linkMap.add({'script': link.text});
  }
  for (int i = 0; i < linkMap.length; i++) {
    var data = linkMap[i]['script'];
    var kotaIndex = data.indexOf("('#container");
    var petikIndex = data.indexOf("').highcharts");
    var kotaSub = data.substring(kotaIndex + 12, petikIndex);
    print(kotaSub);
    for (var j = 0; j < 24; j++) {
      var dataIndex = data.indexOf("['$j',");
      if (dataIndex == -1) {
        break;
      }
      if (j >= 10) {
        var dataSub = data.substring(dataIndex + 7, dataIndex + 10);
        var parseData = double.parse(dataSub);
        assert(parseData is double);
        print(parseData);
      } else {
        var dataSub = data.substring(dataIndex + 6, dataIndex + 9);
        var parseData = double.parse(dataSub);
        assert(parseData is double);
        print(parseData);
      }
    }
  }
  //var data = linkMap[3]['script'];
  //var dataIndex = data.indexOf("['1',");
  //var dataSub = data.substring(dataIndex + 6, dataIndex + 11);
  //var dataPrint = dataIndex.toString() + '\n' + dataSub;
  //return print(dataPrint);
}

Future gempa() async {
  Xml2Json xml2json = new Xml2Json();
  try {
    var client = Client();
    Response response = await client.get(
        Uri.parse('https://data.bmkg.go.id/DataMKG/TEWS/gempadirasakan.xml'));
    xml2json.parse(response.body);
    var jsondata = xml2json.toGData();
    var data = json.decode(jsondata);
    print(data);
  } catch (e) {
    print(e);
  }
}
