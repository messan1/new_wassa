import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_wassa/views/components/voiceconstants.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;

  const CustomDialogBox(
      {Key? key,
      required this.title,
      required this.descriptions,
      required this.text})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  bool _isListening = false;
  late stt.SpeechToText _speech;
  String _text = '';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      widget.text,
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
            top: 50,
            right: 10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
              ),
              child: Icon(Icons.close),
            )),
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
                          minLines: 1,
                          maxLines: 2,
                          decoration: InputDecoration(
                            hintStyle: new TextStyle(color: blackFont),
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
        _speech.listen(
          localeId: 'fr-FR',
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            console.log('texte : ' + _text);
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
