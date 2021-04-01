import 'package:b_lind/button_cuaca.dart';
import 'package:b_lind/button_gempa.dart';
import 'package:b_lind/button_bahasa.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'button_udara.dart';
import 'package:flutter_tts/flutter_tts.dart';

bool isPressed = false;
double heightButton = 300;
double widthButton = 165;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum TtsState { stopped, playing }

class _HomePageState extends State<HomePage> {
  final Map<String, HighlightedWord> _highlights = {
    'mendung': HighlightedWord(
      onTap: () => print('mendung'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.red),
    ),
    'hujan': HighlightedWord(
      onTap: () => print('hujan'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.red),
    ),
    'cuaca': HighlightedWord(
      onTap: () => print('cuaca'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.red),
    ),
    'weather': HighlightedWord(
      onTap: () => print('weather'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.red),
    ),
    'gempa': HighlightedWord(
      onTap: () => print('gempa'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.blue),
    ),
    'earthquake': HighlightedWord(
      onTap: () => print('earthquake'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.blue),
    ),
    'udara': HighlightedWord(
      onTap: () => print('udara'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.green),
    ),
    'kualitas': HighlightedWord(
      onTap: () => print('kualitas'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.green),
    ),
    'air': HighlightedWord(
      onTap: () => print('air'),
      textStyle:
          TextStyle(fontFamily: 'fira sans', fontSize: 35, color: Colors.green),
    ),
  };

  bool _isListening = false;
  stt.SpeechToText speech = stt.SpeechToText();
  //stt.SpeechToText _speech;
  String _text = "Klik Tombol Mikrofon";
  String bahasa = 'id-ID';
  String empty = 'mendengarkan...';

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
  var nlp;

//? Data cuaca dari DBase
  var isWilayah = '';
  var gps_wilayah = '';
  var waktu = '';
  var weather = '';
  var suhu = '';
  var kelembaban = '';
  var w_speed = '';
  var w_dir = '';

//? Data gempa dari DBase
  var titik_gempa = '';
  var titik_pengguna = '';
  var magnitude = '';
  var tanggal = '';
  var jam = '';
  var wil_gempa = '';
  var jarak = ''; //? perhitungan dari titik_gempa dengan titik_pengguna
  var potensi = '';

  //? Data kualitas udara di Dbase
  var wil_udara = '';
  var kondisi_udara = '';

  FlutterTts flutterTts;
  dynamic languages;
  String language;
  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;
  String _newVoiceText;
  TtsState ttsState = TtsState.stopped;

  get isPlaying => ttsState == TtsState.playing;

  get isStopped => ttsState == TtsState.stopped;

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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Semantics(
                      container: true,
                      label: _text,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.height / 3,
                        child: ExcludeSemantics(
                          child: TextHighlight(
                            text: (_text == '') ? empty : _text,
                            textAlign: TextAlign.center,
                            words: _highlights,
                            textStyle: TextStyle(
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
            onResult: (val) => setState(() {
                  _text = val.recognizedWords;
                }));
      }
    } else {
      setState(() => _isListening = false);
      speech.stop();
    }
  }

  Future _speak() async {
    var cuaca = _text.contains(isCuaca);
    var gempa = _text.contains(isGempa);
    var udara = _text.contains(isUdara);
    var wilayah = _text.contains(isWilayah);
    var sekarang = _text.contains(isSekarang);
    var besok = _text.contains(isBesok);
    var hari_ini = _text.contains(isHari);

    if (cuaca) {
      newText =
          ("Cuaca di jambi Pada pukul 13 hari ini, cuaca hujan dengan suhu 27 derajat, kelembaban 90 dan kecepatan angin 3 kilometer perjam ke tenggara");
      if (newText != null) {
        if (newText.isNotEmpty) {
          var result = await flutterTts.speak(newText);
          if (result == 1) setState(() => ttsState = TtsState.playing);
        }
      }
    }
  }
}
