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
  final List dataGempa;
  final List dataUdara;
  HomePage({Key key, @required this.dataGempa, this.dataUdara})
      : super(key: key);
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
  var isGempa = 'gempa'; // gempa
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
  var isJambi = 'jambi';
  var isMedan = 'medan';
  var isPangkalan = 'pangkalanbun';
  var isKototabang = 'kototabang';
  var isKemayoran = 'kemayoran';
  var isCibeureum = 'cibeureum';

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
    newText = _text.toLowerCase();
    var polusi = newText.contains(isPolusi);
    var cuaca = newText.contains(isCuaca);
    var gempa = newText.contains(isGempa);
    var udara = newText.contains(isUdara);
    var wilayah1 = newText.contains(isMedan);
    var wilayah2 = newText.contains(isKototabang);
    var wilayah3 = newText.contains(isJambi);
    var wilayah4 = newText.contains(isCibeureum);
    var wilayah5 = newText.contains(isPangkalan);
    var sekarang = newText.contains(isSekarang);
    var besok = newText.contains(isBesok);
    var hariIni = newText.contains(isHari);

    cuacaText =
        ('Besok pagi \ncuaca kabut dengan suhu 24 derajat, kelembaban 100% dan kecepatan angin 10 kilometer perjam ke tenggara');
    gempaText = ('gempa berkekuatan ' +
        widget.dataGempa[4].toString() +
        ' Magnitude\n pada ' +
        widget.dataGempa[0].toString() +
        ' jam ' +
        widget.dataGempa[1].toString() +
        ' \n di  ' +
        widget.dataGempa[5].toString() +
        '. \n 2550 kilometer dari anda \n  ' +
        widget.dataGempa[6].toString() +
        '');
    var udaraMedanText = ("Kualitas Udara di wilayah $isMedan baik");
    var udaraPangkalanText = ("Kualitas Udara di wilayah $isPangkalan baik");
    var udaraKotoText = ("Kualitas Udara di wilayah $isKototabang baik");
    var udaraJambiText = ("Kualitas Udara di wilayah $isJambi sedang");
    var udaraCibeureumText = ("Kualitas Udara di wilayah $isCibeureum baik");
    var noData = ("maaf, data di kota anda tidak tersedia");

    flutterTts.setLanguage(bahasa);
    await flutterTts.setPitch(pitch);

    if (cuaca) {
      await flutterTts.speak(cuacaText);
    }
    if (gempa) {
      await flutterTts.speak(gempaText);
    }
    if (udara && wilayah1) {
      await flutterTts.speak(udaraMedanText);
    }
    if (udara && wilayah2) {
      await flutterTts.speak(udaraKotoText);
    }
    if (udara && wilayah3) {
      await flutterTts.speak(noData);
    }
    if (udara && wilayah4) {
      await flutterTts.speak(udaraCibeureumText);
    }
    if (udara && wilayah5) {
      await flutterTts.speak(udaraPangkalanText);
    }
    if (polusi && wilayah1) {
      await flutterTts.speak(udaraMedanText);
    }
    if (polusi && wilayah2) {
      await flutterTts.speak(udaraKotoText);
    }
    //if (polusi && wilayah3) {
    //  await flutterTts.speak(udaraKemayoranText);
    //}
    if (polusi && wilayah4) {
      await flutterTts.speak(udaraCibeureumText);
    }
    if (polusi && wilayah5) {
      await flutterTts.speak(udaraPangkalanText);
    }
  }

  Future _stop() async {
    var result = await flutterTts.stop();
    if (result == 1) setState(() => ttsState = TtsState.stopped);
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
                    children: [
                      ButtonOption(),
                      ButtonUdara(dataUdara: widget.dataUdara)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonGempa(
                        dataGempa: widget.dataGempa,
                      ),
                      ButtonCuaca()
                    ],
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
        setState(() {
          _isListening = true;
          if (_isListening) {
            _stop();
          }
        });
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
