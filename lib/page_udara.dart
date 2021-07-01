import 'package:flutter/material.dart';

class UdaraPage extends StatefulWidget {
  @override
  _UdaraPageState createState() => _UdaraPageState();
}

class _UdaraPageState extends State<UdaraPage> {
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
                child: Text('Kualitas Udara',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'fauna one',
                        fontSize: 35,
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
                    child: Text('Kualitas Udara di wilayah \nPANGKALANBUN Baik',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
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
                    child: Text('Kualitas Udara di wilayah \nMEDAN Baik',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
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
                    child: Text('Kualitas Udara di wilayah \nCIBEUREUM Baik',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
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
                    child: Text('Kualitas Udara di wilayah \nKOTOTABANG Baik',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
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
                    child: Text('Kualitas Udara di wilayah \nkEMAYORAN Sedang',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
