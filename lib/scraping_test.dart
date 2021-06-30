import 'package:stacked/stacked.dart';
import 'package:web_scraper/web_scraper.dart';
import 'model/viewmodel.dart';
import 'package:flutter/material.dart';

class Scrapper extends StatefulWidget {
  @override
  _ScrapperState createState() => _ScrapperState();
}

class _ScrapperState extends State<Scrapper> {
  bool loaded = false;
  String popNum = '';
  String popWil = '';
  List<Map<String, dynamic>> namaWilayah;
  List<Map<String, dynamic>> productDescription;

  @override
  void initState() {
    super.initState();
    // Requesting to fetch before UI drawing starts
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.getData(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text('test Scraper data adn Hive'),
        ),
        body: model.dataUdaraList.length != 0 ? Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(10),
          child: GridView.builder(gridDelegate: , itemBuilder: itemBuilder),
        ),
        
      ),
    );
  }
}
