import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
//import 'package:flutter_tts/flutter_tts_web.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../home.dart';

class BaliInfoPage extends StatefulWidget {
  @override
  _BaliInfoPageState createState() => _BaliInfoPageState();
}

class _BaliInfoPageState extends State<BaliInfoPage> {
  String bahasa = 'id-ID';
  String teksCuaca1;
  String teksCuaca2;
  String teksCuaca3;
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

  Future _speakCuaca1() async {
    speech.stop();
    flutterTts.setLanguage(bahasa);
    await flutterTts.setPitch(pitch);
    teksCuaca1 =
        'Besok pagi \ncuaca cerah berawan dengan suhu 24 derajat, kelembaban 85% dan kecepatan angin 30 kilometer perjam ke timur';
    await flutterTts.speak(teksCuaca1);
  }

  Future _speakCuaca2() async {
    speech.stop();
    flutterTts.setLanguage(bahasa);
    await flutterTts.setPitch(pitch);
    teksCuaca2 =
        'Besok siang\ncuaca hujan ringan dengan suhu 30 derajat, kelembaban 65% dan kecepatan angin 20 kilometer perjam ke timur';
    await flutterTts.speak(teksCuaca1);
  }

  Future _speakCuaca3() async {
    speech.stop();
    flutterTts.setLanguage(bahasa);
    await flutterTts.setPitch(pitch);
    teksCuaca3 =
        'Lusa pagi \ncuaca hujan ringan dengan suhu 26 derajat, kelembaban 85% dan kecepatan angin 10 kilometer perjam ke tenggara';
    await flutterTts.speak(teksCuaca3);
  }

  Future _stop() async {
    await flutterTts.stop();
  }

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
                label: 'klik dua kali untuk informasi',
                child: Container(
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
                      _speakCuaca1();
                    },
                    child: ExcludeSemantics(
                      child: Text(
                          'Besok pagi \ncuaca cerah berawan dengan suhu 24 derajat, kelembaban 85% dan kecepatan angin 30 kilometer perjam ke timur',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'fauna one',
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              Semantics(
                container: true,
                label: 'klik dua kali untuk informasi',
                child: Container(
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
                      _speakCuaca2();
                    },
                    child: Text(
                        'Besok siang\ncuaca hujan ringan dengan suhu 30 derajat, kelembaban 65% dan kecepatan angin 20 kilometer perjam ke timur',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Semantics(
                container: true,
                label: 'klik dua kali untuk informasi',
                child: Container(
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
                    child: Text(
                        'Besok malam\ncuaca cerah berawan dengan suhu 27 derajat, kelembaban 75% dan kecepatan angin 10 kilometer perjam ke tenggara',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Semantics(
                container: true,
                label: 'klik dua kali untuk informasi',
                child: Container(
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
                      _speakCuaca3();
                    },
                    child: Text(
                        'Lusa pagi \ncuaca hujan ringan dengan suhu 26 derajat, kelembaban 85% dan kecepatan angin 10 kilometer perjam ke tenggara',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Semantics(
                container: true,
                label: 'klik dua kali untuk informasi',
                child: Container(
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
                    child: Text(
                        'Lusa siang  \ncuaca berawan dengan suhu 30 derajat, kelembaban 70% dan kecepatan angin 20 kilometer perjam ke tenggara',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'fauna one',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Semantics(
                container: true,
                label: 'klik dua kali untuk informasi',
                child: Container(
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
                    child: Text(
                        'Lusa malam \ncuaca berawan dengan suhu 28 derajat, kelembaban 80% dan kecepatan angin 20 kilometer perjam ke tenggara',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
