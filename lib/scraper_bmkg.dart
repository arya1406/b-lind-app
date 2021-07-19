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
    List dataKota = [];
    List<List<List<dynamic>>> listDataUdara =
        List.generate(34, (i) => List.generate(7, (index) => []));
    List waktuCuaca = [
      '',
      'Pagi hari',
      'Siang hari',
      'Malam hari',
      '',
      'Besok Pagi',
      'Besok Siang',
      'Besok Malam'
    ];

    try {
      var client = Client();
      Response response = await client.get(Uri.parse(
          'https://data.bmkg.go.id/DataMKG/MEWS/DigitalForecast/DigitalForecast-Indonesia.xml'));
      xml2json.parse(response.body);
      var jsondata = xml2json.toGData();
      var data = json.decode(jsondata);
      var parameter;

      for (var i = 0; i < data['data']['forecast']['area'].length; i++) {
        dataKota.add(data['data']['forecast']['area'][i]['name'][0][r'$t']);

        for (var j = 0; j < 6; j++) {
          for (var k = 1; k < 8; k++) {
            if (k == 4) {
              continue;
            }

            listDataUdara[i][j].add(waktuCuaca[k]);
            parameter = data['data']['forecast']['area'][i]['parameter'][6]
                ['timerange'][k]['value'][r'$t'];
            if (parameter == '0') {
              parameter = 'Cerah';
            }
            if (parameter == '1') {
              parameter = 'Cerah Berawan';
            }
            if (parameter == '2') {
              parameter = 'Cerah Berawan';
            }
            if (parameter == '3') {
              parameter = 'Berawan';
            }
            if (parameter == '4') {
              parameter = 'Berawan Tebal';
            }
            if (parameter == '5') {
              parameter = 'Udara Kabur';
            }
            if (parameter == '10') {
              parameter = 'Asap';
            }
            if (parameter == '45') {
              parameter = 'Kabut ';
            }
            if (parameter == '60') {
              parameter = 'Hujan Ringan';
            }
            if (parameter == '61') {
              parameter = 'Hujan Sedang';
            }
            if (parameter == '63') {
              parameter = 'Hujan Lebat';
            }
            if (parameter == '80') {
              parameter = 'Hujan Lokal';
            }
            if (parameter == '95') {
              parameter = 'Hujan Petir';
            }
            if (parameter == '97') {
              parameter = 'Hujan Petir';
            }
            listDataUdara[i][j].add(parameter);
            listDataUdara[i][j].add(data['data']['forecast']['area'][i]
                ['parameter'][5]['timerange'][k]['value'][0][r'$t']);
            listDataUdara[i][j].add(data['data']['forecast']['area'][i]
                ['parameter'][0]['timerange'][k]['value'][r'$t']);
            listDataUdara[i][j].add(data['data']['forecast']['area'][i]
                ['parameter'][8]['timerange'][k]['value'][2][r'$t']);
            parameter = data['data']['forecast']['area'][i]['parameter'][7]
                ['timerange'][k]['value'][1][r'$t'];
            if (parameter == 'N') {
              parameter = 'Utara';
            }
            if (parameter == 'NNE') {
              parameter = 'Utara - timur laut';
            }
            if (parameter == 'NE') {
              parameter = 'Timur laut';
            }
            if (parameter == 'ENE') {
              parameter = 'Timur-Timur Laut';
            }
            if (parameter == 'E') {
              parameter = 'Timur';
            }

            if (parameter == 'ESE') {
              parameter = 'Timur-Tenggara';
            }
            if (parameter == 'SE') {
              parameter = 'Tenggara';
            }
            if (parameter == 'SSE') {
              parameter = 'Selatan-Tenggara';
            }
            if (parameter == 'S') {
              parameter = 'Selatan';
            }
            if (parameter == 'SSW') {
              parameter = 'Selatan-Barat Daya';
            }
            if (parameter == 'SW') {
              parameter = 'Barat daya';
            }
            if (parameter == 'WSW') {
              parameter = 'Barat-Barat Daya';
            }
            if (parameter == 'W') {
              parameter = 'Barat';
            }
            if (parameter == 'WNW') {
              parameter = 'Barat-Barat Laut';
            }
            if (parameter == 'NW') {
              parameter = 'Barat laut';
            }
            if (parameter == 'NNW') {
              parameter = 'Utara-Barat Laut';
            }
            if (parameter == 'VARIABLE') {
              parameter = 'berubah-ubah';
            }

            listDataUdara[i][j].add(parameter);

            if (k == 7) {
              break;
            }
          }
        }
      }
      print(listDataUdara[0][0][0]);
      print(listDataUdara[0][0][1]);
    } catch (e) {
      print(e);
    }
  }
}
