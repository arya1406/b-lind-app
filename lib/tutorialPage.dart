import 'package:avatar_glow/avatar_glow.dart';
import 'package:b_lind/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  String bahasa = 'id-ID';
  String teksTutorial;
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

  Future _speakTutor() async {
    speech.stop();
    flutterTts.setLanguage(bahasa);
    await flutterTts.setPitch(pitch);
    teksTutorial =
        "selamat datang di infoBMKG untuk tunanetra. aplikasi ini akan memudahkan anda untuk mendapatkan informasi prakiraan cuaca, gempa terkini diatas 5 magnitudo dan info kualitas udara. Halaman utama aplikasi terdapat tombol mikrofon, ketika tombol di klik akan timbul suara klik, kemudian anda bisa bertanya tentang seputar informasi cuaca, gempa dan kualitas udara, seperti, gempa yang barusan terjadi gimana. atau. gimana kualitas udara di wilayah medan. atau. cuaca hari ini gimana ?. aplikasi akan memberikan informasi yang anda minta dalam bentuk suara. jika anda menslide ke kiri layar, terdapat menu tombol informasi cuaca berdasarkan provinsi, tombol informasi gempa terkini, tombol informasi kualitas udara, berbentuk teks yang yang dapat dibaca oleh fitur Talkback. terdapat pula tombol untuk menukar bahasa pada aplikasi. Semoga aplikasi ini dapat membantu anda dalam mendapatkan informasi prakiraan cuaca, gempa bumi, dan kualitas udara. tekan tombol skip dibawah untuk masuk ke menu utama.";
    await flutterTts.speak(teksTutorial);
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
                child: Text('Tutorial',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'fauna one',
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Semantics(
                  container: true,
                  label: 'tombol putar suara tutorial aplikasi info BMKG',
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: FittedBox(
                      child: AvatarGlow(
                          animate: true,
                          glowColor: Colors.black,
                          endRadius: 35.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          child: ExcludeSemantics(
                            child: FloatingActionButton(
                                backgroundColor: Color(0xfffffc00),
                                onPressed: () {
                                  _speakTutor();
                                },
                                child: Icon(
                                  Icons.play_arrow_sharp,
                                  color: Colors.black,
                                )),
                          )),
                    ),
                  ),
                ),
                Semantics(
                    container: true,
                    label: 'tombol skip tutorial',
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: FittedBox(
                        child: AvatarGlow(
                          animate: true,
                          glowColor: Colors.black,
                          endRadius: 35.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          child: ExcludeSemantics(
                            child: FloatingActionButton(
                              backgroundColor: Color(0xfffffc00),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomePage();
                                }));
                              },
                              child: Text('SKIP',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'fira sans',
                                      fontSize: 20,
                                      color: Colors.black)),
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
