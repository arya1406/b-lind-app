import 'package:b_lind/button_cuaca.dart';
import 'package:b_lind/button_gempa.dart';
import 'package:b_lind/button_bahasa.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'button_udara.dart';

bool isPressed = false;
double heightButton = 300;
double widthButton = 165;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, HighlightedWord> _highlights = {
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
            child: Container(
          width: 100,
          child: Image(
            height: 73,
            image: AssetImage('images/mic.png'),
            semanticLabel: 'menu mikrofon',
          ),
        )
            /*Text(
              'MIKROFON',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'fira sans', fontSize: 25),
            ),
            */
            ),
        Tab(
          child: Container(
              width: 100,
              child: Image(
                image: AssetImage('images/weather.png'),
                semanticLabel: 'menu informasi lainnya',
              )
              /*Text(
              'INFORMASI',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'fira sans', fontSize: 25),
            ),*/
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
                  'B-LIND',
                  style: TextStyle(
                      fontFamily: 'Museo Moderno',
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
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height / 3,
                      child: TextHighlight(
                        text: _text,
                        textAlign: TextAlign.center,
                        words: _highlights,
                        textStyle: TextStyle(
                            fontFamily: 'fira sans',
                            fontSize: 35,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      //width: 430,
                      child: FittedBox(
                          child: AvatarGlow(
                        animate: true,
                        glowColor: Colors.black,
                        endRadius: 35.0,
                        duration: const Duration(milliseconds: 2000),
                        repeatPauseDuration: const Duration(milliseconds: 100),
                        repeat: _isListening,
                        child: FloatingActionButton(
                          backgroundColor: Color(0xfffffc00),
                          onPressed: _listen,
                          child: Image(
                              image: AssetImage(
                            "images/mic.png",
                          )),
                        ),
                      )),
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
}
