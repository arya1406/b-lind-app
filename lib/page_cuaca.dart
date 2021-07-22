import 'package:b_lind/page_info_cuaca.dart';
import 'package:flutter/material.dart';
//import 'scraping_test';

class PageCuaca extends StatefulWidget {
  final List dataCuaca;
  final List dataKota;
  PageCuaca({Key key, this.dataCuaca, this.dataKota}) : super(key: key);

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
                      fontFamily: 'fauna one',
                      fontSize: 45,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: widget.dataKota.length,
            itemBuilder: (context, index) {
              return Column(children: [
                Semantics(
                  label: widget.dataKota[index],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 10),
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0xfffffc00),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PageInfoCuaca(
                              dataKota: widget.dataKota,
                              dataCuacaKota: widget.dataCuaca[index],
                              i: (index));
                        }));
                      },
                      child: ExcludeSemantics(
                        child: Text(widget.dataKota[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontFamily: 'fauna one',
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ]);
            }),
      ),
    );
  }
}
