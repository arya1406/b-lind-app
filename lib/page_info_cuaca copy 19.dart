import 'package:b_lind/Aceh/Aceh_kab_page.dart';
import 'package:b_lind/Bali/Bali_kab_page.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'home.dart';
//import 'scraping_test';

class PageInfoCuaca extends StatefulWidget {
  final List dataCuaca;
  final List dataKota;
  PageInfoCuaca({Key key, this.dataCuaca, this.dataKota}) : super(key: key);

  @override
  _PageInfoCuacaState createState() => _PageInfoCuacaState();
}

class _PageInfoCuacaState extends State<PageInfoCuaca> {
  String bahasa = 'id-ID';
  String teksCuaca;
  dynamic languages;
  String language;
  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;
  String newVoiceText;
  TtsState ttsState = TtsState.stopped;

  get isPlaying => ttsState == TtsState.playing;
  get isStopped => ttsState == TtsState.stopped;
  stt.SpeechToText speech = stt.SpeechToText();
  final FlutterTts flutterTts = FlutterTts();
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
            itemCount: 6,
            itemBuilder: (context, i) {
              return Column(children: [
                Semantics(
                  container: true,
                  label: 'klik dua kali untuk informasi',
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 10),
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0xfffffc00),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: InkWell(
                      onTap: () async {
                        speech.stop();
                        flutterTts.setLanguage(bahasa);
                        await flutterTts.setPitch(pitch);
                        teksCuaca = widget.dataCuaca[0][i][0].toString() +
                            '\n cuaca ' +
                            widget.dataCuaca[0][i][1].toString() +
                            ' dengan suhu ' +
                            widget.dataCuaca[0][i][2].toString() +
                            'derajat, kelembaban ' +
                            widget.dataCuaca[0][i][3].toString() +
                            '%, kecepatan angin ' +
                            widget.dataCuaca[0][i][4]
                                .toString()
                                .substring(0, 2) +
                            ' kilometer perjam ke ' +
                            widget.dataCuaca[0][i][5].toString();
                        await flutterTts.speak(teksCuaca);
                      },
                      child: ExcludeSemantics(
                        child: Text(
                            widget.dataCuaca[0][i][0].toString() +
                                ' cuaca ' +
                                widget.dataCuaca[0][i][1].toString() +
                                ' dengan suhu ' +
                                widget.dataCuaca[0][i][2].toString() +
                                ' derajat, kelembaban ' +
                                widget.dataCuaca[0][i][3].toString() +
                                '%, kecepatan angin ' +
                                widget.dataCuaca[0][i][4].toString() +
                                ' kilometer perjam ke ' +
                                widget.dataCuaca[0][i][5].toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
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
