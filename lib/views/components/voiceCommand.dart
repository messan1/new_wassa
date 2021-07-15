import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_wassa/DataHandler/voiceData.dart';
import 'package:new_wassa/views/components/voiceconstants.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:provider/provider.dart';

class VoiceDialogBox extends StatefulWidget {
  final dynamic audio;

  const VoiceDialogBox({Key? key, required this.audio}) : super(key: key);

  @override
  _VoiceDialogBoxState createState() => _VoiceDialogBoxState();
}

class _VoiceDialogBoxState extends State<VoiceDialogBox> {
  bool _isListening = false;
  late stt.SpeechToText _speech;
  String _text = '';
  int res = 0;
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    setupPlaylist();
    playAudio();
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  void setupPlaylist() async {
    List<Audio> arr = [];
    for (String i in widget.audio) {
      arr.add(Audio('assets/' + i));
    }
    audioPlayer.open(Playlist(audios: arr),
        showNotification: false, autoStart: true);
  }

  playAudio() async {
    await audioPlayer.play();
  }

  stopAudio() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  TextEditingController password = new TextEditingController();

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 390,
          padding: EdgeInsets.only(
              left: Constants.padding,
              top: Constants.avatarRadius + Constants.padding,
              right: Constants.padding,
              bottom: Constants.padding),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/voice.gif"),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
        ),
        Positioned(
            top: 50,
            right: 10,
            child: GestureDetector(
                onTap: () => {
                      // FERMER LA POP-UP et DESACTIVER VOICE COMMAND
                      Navigator.of(context).pop(),
                      Provider.of<VoiceData>(context, listen: false)
                          .updateActiverCommandeVocal(false)
                    },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.close),
                ))),
        Positioned(
            bottom: 55,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AvatarGlow(
                            animate: _isListening,
                            glowColor: Colors.white,
                            endRadius: 50,
                            duration: const Duration(milliseconds: 2000),
                            repeatPauseDuration:
                                const Duration(milliseconds: 100),
                            repeat: true,
                            child: FloatingActionButton(
                              onPressed: _listen,
                              child: Icon(
                                  _isListening ? Icons.mic : Icons.mic_none),
                            ),
                          ),
                        )),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: TextFormField(
                          //maxLength: 1,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: new TextStyle(
                              color: blueFont,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintStyle: new TextStyle(
                                color: blackFont,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            hintText: "Saisir le numéro ici",
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              right: 5,
                              left: 10,
                            ),
                            fillColor: greyFont.withOpacity(.45),
                            filled: true,
                          ))),
                ],
              ),
            )),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.avatarRadius,
          ),
        ),
      ],
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        stopAudio();
        _speech.listen(
          localeId: 'fr-FR',
          listenFor: Duration(seconds: 3),
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            setState(() => _isListening = false);
            print('texte : ' + _text);
            if (_text.toLowerCase().contains("un") ||
                _text.toLowerCase().contains("1")) res = 1;
            if (_text.toLowerCase().contains("deux") ||
                _text.toLowerCase().contains("2")) res = 2;
            if (_text.toLowerCase().contains("trois") ||
                _text.toLowerCase().contains("3")) res = 3;
            if (_text.toLowerCase().contains("quatre") ||
                _text.toLowerCase().contains("4")) res = 4;
            final _voiceData = Provider.of<VoiceData>(context, listen: false);
            _voiceData.updateResponse(res);
            print('Res : ' + _voiceData.reponse.toString());
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
