import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:new_wassa/Model/AuthState.dart';

class UserAuth extends ChangeNotifier {
  String? phoneNumber;
  String? firstname;
  String? lastname;
  String? number;
  String? bith;
  String? email;
  String? password;
  String? role;
  AuthState? authState;
  File? profilePicture;

  void updatePhone(String phone) {
    phoneNumber = phone;
    notifyListeners();
  }

  void updateUsername(String last, String first, String date) {
    lastname = last;
    firstname = first;
    bith = date;
    notifyListeners();
  }

  void updateUserAccess(
      String dataemail, String datapassword, String datarole) {
    email = dataemail.toLowerCase().trim();
    password = datapassword;
    role = datarole;
    notifyListeners();
  }

  void updateAuthState(AuthState auth) {
    authState = auth;
    notifyListeners();
  }

  void updateProfileImage(File picture) {
    profilePicture = picture;
    notifyListeners();
  }
}
