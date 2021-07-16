import 'dart:convert'; // Contains the JSON encoder
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart'; // Contains a client for making API calls
import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
import 'package:html/dom.dart'; // Contains DOM related classes for extracting data from elements

class UdaraService {
  Future udara() async {
    //? Make API call to web
    var client = Client();
    Response response = await client.get(Uri.parse(
        'https://www.bmkg.go.id/kualitas-udara/informasi-partikulat-pm10.bmkg'));

    //?Use Html Parser and query selector
    var document = parse(response.body);
    List<Element> links = document.querySelectorAll('div.pm10');
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
    List listWilMap = [];
    for (var i = 0; i < wilMap.length; i++) {
      listWilMap.add(wilMap[i].values.toList());
    }
    return listWilMap[0][0];
  }
  //var data = linkMap[3]['script'];
  //var dataIndex = data.indexOf("['1',");
  //var dataSub = data.substring(dataIndex + 6, dataIndex + 11);
  //var dataPrint = dataIndex.toString() + '\n' + dataSub;
  //return print(dataPrint);

}

class GempaService {
  Future gempa() async {
    Xml2Json xml2json = new Xml2Json();
    List dataGempa = [];
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

      print(listDataGempa);
      //dataGempa.add(data['Infogempa']['gempa'][0]['Tanggal'][r'$t']);
    } catch (e) {
      print(e);
    }
  }
}

class CuacaService {
  Future cuaca() async {
    Xml2Json xml2json = new Xml2Json();
    var parameter = '';
    var val_parameter = '';
    var isHum = 'Humidity';
    var isHumMax = 'Max humidity';
    var isHumMin = 'Min humidity';
    var isWeather = 'Weather';
    var isTemp = 'Temperature';
    var isTempMax = 'Max temperature';
    var isTempMin = 'Min temperature';
    var isWindSpeed = 'Wind speed';
    var isWindDir = 'Wind direction';
    try {
      var client = Client();
      Response response = await client.get(Uri.parse(
          'https://data.bmkg.go.id/DataMKG/MEWS/DigitalForecast/DigitalForecast-Indonesia.xml'));
      xml2json.parse(response.body);
      var jsondata = xml2json.toGData();
      var data = json.decode(jsondata);

      for (var i = 0; i < 4; i++) {
        print(data['data']['forecast']['area'][i]['name'][0][r'$t']);
        for (var j = 0;
            j < data['data']['forecast']['area'][i]['parameter'].length;
            j++) {
          parameter = data['data']['forecast']['area'][i]['parameter'][j]
              ['description'];
          if (parameter == isWeather) {
            print(parameter);
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][2]['value'][r'$t'];
            if (val_parameter == '0') {
              val_parameter = 'Cerah';
            }
            if (val_parameter == '1') {
              val_parameter = 'Cerah Berawan';
            }
            if (val_parameter == '2') {
              val_parameter = 'Cerah Berawan';
            }
            if (val_parameter == '3') {
              val_parameter = 'Berawan';
            }
            if (val_parameter == '60') {
              val_parameter = 'Cerah';
            }
            print(val_parameter);
          }
          if (parameter == isTempMax) {
            print(parameter);
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][0][r'$t'];
            print(val_parameter);
          }
          if (parameter == isTempMin) {
            print(parameter);
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][0][r'$t'];
            print(val_parameter);
          }
          if (parameter == isHumMin) {
            print(parameter);
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][r'$t'];
            print(val_parameter);
          }
          if (parameter == isHumMax) {
            print(parameter);
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][r'$t'];
            print(val_parameter);
          }
          if (parameter == isTemp) {
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][0][r'$t'];
          }
          if (parameter == isWindDir) {
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][1][r'$t'];
          }
          if (parameter == isWindSpeed) {
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][3][r'$t'];
          }
          if (parameter == isHum) {
            val_parameter = data['data']['forecast']['area'][i]['parameter'][j]
                ['timerange'][0]['value'][r'$t'];
          }
        }
        print('\n');
      }
      //print(data['data']['forecast']['area'][0]['parameter'][0]['timerange'][0]['value'][r'$t']);
      //dataGempa.add(data['Infogempa']['gempa'][0]['Tanggal'][r'$t']);
    } catch (e) {
      print(e);
    }
  }
}
