import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'home.dart';
//import 'scraping_test';

class PageInfoCuaca extends StatefulWidget {
  final List dataCuacaKota;
  final List dataKota;
  final int i;
  PageInfoCuaca({Key key, this.dataCuacaKota, this.dataKota, this.i})
      : super(key: key);

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
              child: Text(widget.dataKota[widget.i],
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'fauna one',
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
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
                        teksCuaca = widget.dataCuacaKota[index][0].toString() +
                            '\n cuaca ' +
                            widget.dataCuacaKota[index][1].toString() +
                            ' dengan suhu ' +
                            widget.dataCuacaKota[index][2].toString() +
                            'derajat, kelembaban ' +
                            widget.dataCuacaKota[index][3].toString() +
                            '%, kecepatan angin ' +
                            widget.dataCuacaKota[index][4]
                                .toString()
                                .substring(0, 2) +
                            ' kilometer perjam ke ' +
                            widget.dataCuacaKota[index][5].toString();
                        await flutterTts.speak(teksCuaca);
                      },
                      child: ExcludeSemantics(
                        child: Text(
                            widget.dataCuacaKota[index][0].toString() +
                                ' cuaca ' +
                                widget.dataCuacaKota[index][1].toString() +
                                ' dengan suhu ' +
                                widget.dataCuacaKota[index][2].toString() +
                                ' derajat, kelembaban ' +
                                widget.dataCuacaKota[index][3].toString() +
                                '%, kecepatan angin ' +
                                widget.dataCuacaKota[index][4].toString() +
                                ' kilometer perjam ke ' +
                                widget.dataCuacaKota[index][5].toString(),
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
