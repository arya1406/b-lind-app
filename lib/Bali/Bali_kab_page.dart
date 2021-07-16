import 'package:flutter/material.dart';

import 'Bali_info_page.dart';

class BaliKabPage extends StatefulWidget {
  @override
  _BaliKabPageState createState() => _BaliKabPageState();
}

class _BaliKabPageState extends State<BaliKabPage> {
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
          body: ListView(
            children: [
              Semantics(
                container: true,
                label: 'infromasi chuacha kabupaten aceh barat',
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
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BaliInfoPage();
                      }));
                    },
                    child: Text('Kabupaten \nBadung',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nBangli',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nBuleleng',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
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
                      return BaliInfoPage();
                    }));
                  },
                  child: Text('Kabupaten \nGianyar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nJembrana',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nKarangasem',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nKlungkung',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kabupaten \nTebanan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
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
                  child: Text('Kota Denpasar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'fauna one',
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ));
  }
}
