import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speech_to_text/speech_to_text.dart';
import 'package:b_lind/button_bahasa.dart';
import 'package:b_lind/button_cuaca.dart';
import 'package:b_lind/button_gempa.dart';

import 'button_udara.dart';

bool isPressed = false;
double heightButton = 300;
double widthButton = 165;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum TtsState { stopped, playing }

class _HomePageState extends State<HomePage> {
  bool _isListening = false;
  stt.SpeechToText speech = stt.SpeechToText();
  //stt.SpeechToText _speech;
  String _text = "Klik Tombol Mikrofon";
  String bahasa = 'id-ID';
  String empty = 'mendengarkan...';
  Map varMap;

  var isMendung = 'mendung';
  var isHujan = 'hujan';
  var isGerimis = 'gerimis';
  var isAwan = 'awan';
  var isPanas = 'panas';
  var isDingin = 'dingin';
  var isGelap = 'gelap';
  var isTerang = 'terang';
  var isSejuk = 'sejuk';
  var isCuacanya = 'cuacanya';
  var isCuaca = 'cuaca'; // cuaca
  var isGetarannya = 'getaranya';
  var isGetaran = 'getaran';
  var isGempanya = 'gempanya';
  var isGempa = 'Gempa'; // gempa
  var isPolusi = 'polusi';
  var isUdaranya = 'udaranya'; // udara
  var isUdara = 'udara';
  var isHari = 'hari ini';
  var isBesok = 'besok';
  var isSekarang = 'sekarang';
  var newText = ''; //?
  var cuacaText = '';
  var gempaText = '';
  var udaraText = '';
  var nlp;

//? Data cuaca dari DBase
  var isWilayah = '';
  var gpsWilayah = '';
  var waktu = '';
  var weather = '';
  var suhu = '';
  var kelembaban = '';
  var wSpeed = '';
  var wDir = '';

//? Data gempa dari DBase
  var titikGempa = '';
  var titikPengguna = '';
  var magnitude = '';
  var tanggal = '';
  var jam = '';
  var wilGempa = '';
  var jarak = ''; //? perhitungan dari titik_gempa dengan titik_pengguna
  var potensi = '';

  //? Data kualitas udara di Dbase
  var wilUdara = '';
  var kondisiUdara = '';

  dynamic languages;
  String language;
  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;
  String newVoiceText;
  TtsState ttsState = TtsState.stopped;

  get isPlaying => ttsState == TtsState.playing;
  get isStopped => ttsState == TtsState.stopped;

  final FlutterTts flutterTts = FlutterTts();

  Future _speak() async {
    speech.stop();
    newText = _text;
    newText.toLowerCase();
    var cuaca = newText.contains(isCuaca);
    var gempa = newText.contains(isGempa);
    var udara = newText.contains(isUdara);
    var wilayah = newText.contains(isWilayah);
    var sekarang = newText.contains(isSekarang);
    var besok = newText.contains(isBesok);
    var hariIni = newText.contains(isHari);

    cuacaText =
        ("Cuaca di jambi Pada pukul 13 hari ini, cuaca hujan dengan suhu 27 derajat, kelembaban 90 dan kecepatan angin 3 kilometer perjam ke tenggara");
    gempaText =
        ("gempa berkekuatan 5.5 Magnitudo\npada 10 November jam 07.52\ndi 121 kilometer baratdaya Tanggamus-Lampung. \n525 kilometer dari anda\nTidak berpotensi Tsunami");
    udaraText = ("Kualitas Udara di wilayah\nKemayoran Kurang Sehat");

    flutterTts.setLanguage(bahasa);
    await flutterTts.setPitch(pitch);

    if (cuaca) {
      await flutterTts.speak(cuacaText);
    }
    if (gempa) {
      await flutterTts.speak(gempaText);
    }
    if (udara) {
      await flutterTts.speak(udaraText);
    }
  }

  @override
  Widget build(BuildContext context) {
    TabBar myTabbar = TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        //border: Border(bottom: BorderSide(color: Colors.black, width: 3)),
        color: Color(0xffbebc23),
      ),
      tabs: [
        Tab(
            child: Semantics(
          container: true,
          label: 'menu mikrofon',
          child: Container(
            width: 100,
            child: ExcludeSemantics(
              child: Image(
                height: 73,
                image: AssetImage('images/mic.png'),
              ),
            ),
          ),
        )),
        Tab(
          child: Semantics(
            container: true,
            label: 'menu informasi lainnya',
            child: Container(
                width: 100,
                child: ExcludeSemantics(
                  child: Image(
                    image: AssetImage('images/weather.png'),
                  ),
                )
                /*Text(
                'INFORMASI',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'fira sans', fontSize: 25),
              ),*/
                ),
          ),
        ),
      ],
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xfffffc00),
              title: Center(
                child: Text(
                  'infoBMKG',
                  style: TextStyle(
                      fontFamily: 'fauna one',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              bottom: PreferredSize(
                  child: Container(
                    color: Color(0xfffffc00),
                    child: myTabbar,
                  ),
                  preferredSize:
                      Size.fromHeight(myTabbar.preferredSize.height)),
            ),
            body: TabBarView(children: [
              Container(
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Semantics(
                      container: true,
                      label: _text,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(13),
                        height: MediaQuery.of(context).size.height / 3,
                        child: ExcludeSemantics(
                          child: Text(
                            //maxLines: 21,
                            (_text == '') ? empty : _text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'fira sans',
                                fontSize: 35,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Semantics(
                      container: true,
                      label: 'tombol mikrofon',
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        child: FittedBox(
                            child: AvatarGlow(
                          animate: true,
                          glowColor: Colors.black,
                          endRadius: 35.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          repeat: _isListening,
                          child: ExcludeSemantics(
                            child: FloatingActionButton(
                              backgroundColor: Color(0xfffffc00),
                              onPressed: _listen,
                              child: Image(
                                  image: AssetImage(
                                "images/mic.png",
                              )),
                            ),
                          ),
                        )),
                      ),
                    ),
                  ],
                )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [ButtonOption(), ButtonUdara()],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [ButtonGempa(), ButtonCuaca()],
                  )
                ],
              ),
            ]),
          ),
        ));
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await speech.initialize(
          onStatus: (val) => print('onStatus: $val'),
          onError: (val) => print('onError: $val'));
      if (available) {
        setState(() => _isListening = true);
        speech.listen(
            localeId: bahasa,
            listenMode: ListenMode.confirmation,
            onResult: (val) {
              setState(() {
                _text = val.recognizedWords;
              });
              if (val.finalResult) {
                _speak();
              }
            });
      }
    } else {
      setState(() {
        _isListening = false;
      });
      speech.stop();
    }
  }
}
