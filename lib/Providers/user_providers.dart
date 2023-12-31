import 'package:flutter/material.dart';
import '../Models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    studentId: '',
    studentNumber: '',
    token: '',
    password: '',
    confirmPassword: '',
  );

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
}
