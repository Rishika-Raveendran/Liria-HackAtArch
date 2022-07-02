import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';

class MicScreen extends StatefulWidget {
  const MicScreen({Key? key}) : super(key: key);

  @override
  _MicScreenState createState() => _MicScreenState();
}

class _MicScreenState extends State<MicScreen> {
  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  final stt.SpeechToText _speechToText = stt.SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  String message = "This is a test message!";
  List<String> recipents = ["7306480576", "7594806551"];

  /// This has to happen only once per app
  Future<void> _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  /// Each time to start a speech recognition session
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  /// Manually stop the active speech recognition session
  /// Note that there are also timeouts that each platform enforces
  /// and the SpeechToText plugin supports setting timeouts on the
  /// listen method.
  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _sendSMS(String message, List<String> recipents) async {
    String _result = "";

    _result = await sendSMS(
        message: message, recipients: recipents, sendDirect: true);
    print(_result);
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
    if (_lastWords == "help me") {
      _sendSMS(message, recipents);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  // If listening is active show the recognized words
                  _speechToText.isListening
                      ? _lastWords
                      // If listening isn't active but could be tell the user
                      // how to start it, otherwise indicate that speech
                      // recognition is not yet ready or not supported on
                      // the target device
                      : _speechEnabled
                          ? 'Tap the microphone and say HELP ME'
                          : 'Speech not available',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: FloatingActionButton(
          onPressed:
              _speechToText.isNotListening ? _startListening : _stopListening

          // If not yet listening for speech start, otherwise stop
          ,
          child: Icon(
            _speechToText.isNotListening
                ? Icons.mic_off_outlined
                : Icons.mic_outlined,
            size: 50,
          ),
        ),
      ),
    );
  }
}
