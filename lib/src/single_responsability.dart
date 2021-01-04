import 'dart:convert';

import 'package:flutter/material.dart';

class User {
  const User({this.name, this.email, this.password});
  final String email;
  final String password;
  final String name;

  Map<String, dynamic> toMap() => {};
}

class SignUp extends ChangeNotifier {
  Future<User> signUp({
    String name,
    String password,
    String email,
  }) async {
    //Validate parameters are not empty
    final isValid = name.isNotEmpty && password.isNotEmpty && email.isNotEmpty;

    if (isValid) {
      //Create new user data
      final newUser = User(
        email: email,
        password: password,
        name: name,
      );

      //conver user to Json
      final userMap = newUser.toMap();

      await saveToDB(jsonEncode(userMap));
    }
  }

  Future<void> saveToDB(String userJson) async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
