import 'package:flutter/material.dart';

class AppData with ChangeNotifier {
  UserProfile _userProfile = UserProfile();
  String _userEmail = '';

  // getter
  String get userEmail => _userEmail;
  UserProfile get userProfile => _userProfile;

  // setter
  set userEmail(String value) {
    _userEmail = value;
    notifyListeners(); // อัปเดต UI
  }

  void updateUserProfile(UserProfile profile) {
    _userProfile = profile;
    notifyListeners();
  }
}

class UserProfile {
  int idx = 0;
  String fullname = '';
}
