import 'package:web_scraper/web_scraper.dart';
import 'package:flutter/material.dart';

class Scrapper extends StatefulWidget {
  @override
  _ScrapperState createState() => _ScrapperState();
}

class _ScrapperState extends State<Scrapper> {
  final webScraper = WebScraper('view-source:https://www.bmkg.go.id');

  bool loaded = false;
  String popNum = '';
  String popWil = '';
  List<Map<String, dynamic>> namaWilayah;
  List<Map<String, dynamic>> productDescription;

  void fetchProducts() async {
    print('masuk funsi');
    // load webpage and download into local state library
    if (await webScraper
        .loadWebPage('/kualitas-udara/informasi-partikulat-pm10.bmkg')) {
      setState(() {
        // getElement takes the address of html tag/element and attributes you want to scrap from website
        // it will return the attributes in the same order passed
        namaWilayah = webScraper
            .getElement('div.pm10 > hr > script', ['text/javascript']);
        print(namaWilayah);
        popWil = namaWilayah[0]['text/javascript'];
      });
    } else {
      popWil = 'web tidak ke-load';
    }
  }

  @override
  void initState() {
    super.initState();
    // Requesting to fetch before UI drawing starts
    fetchProducts();
  }

  _getData() async {
    if (await webScraper.loadWebPage('/')) {
      List<Map<String, dynamic>> results =
          webScraper.getElement('div.center', ['tittle']);
      setState(() {
        loaded = true;
        popNum = results[0]['title'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (loaded) ? Text(popWil) : CircularProgressIndicator(),
      ),
    );
  }
}
