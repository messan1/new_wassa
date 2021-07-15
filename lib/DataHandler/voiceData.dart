import 'package:flutter/cupertino.dart';

class VoiceData extends ChangeNotifier {
  String? langue;
  bool? activercommandeVocal;
  int? reponse;

  void updateLangue(String? data) {
    langue = data;
    notifyListeners();
  }

  void updateActiverCommandeVocal(bool? data) {
    activercommandeVocal = data;
    notifyListeners();
  }

  void updateResponse(int? data) {
    reponse = data;
    notifyListeners();
  }
}
