import 'package:flutter/cupertino.dart';

class VoiceData extends ChangeNotifier {
  int? langue;
  String? activercommandeVocal;
  String? reponse;

  void updateLangue(int? data) {
    langue = data;
    notifyListeners();
  }

  void updateActiverCommanevocal(String? data) {
    activercommandeVocal = data;
    notifyListeners();
  }

  void updateResponse(String? data) {
    reponse = data;
    notifyListeners();
  }
}
