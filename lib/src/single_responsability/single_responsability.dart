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
  /// Create a new user with the user info
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

      //Save object in DB
      //This could be even an API call in the logic
      await saveToDB(jsonEncode(userMap));
    }
  }

  Future<void> saveToDB(String userJson) async {
    await Future.delayed(const Duration(seconds: 2));
  }
}

class UserRepository {
  Future<void> saveToDB(User user) async {
    await Future.delayed(const Duration(seconds: 2));
  }
}

class ApiHelper {
  static void post(String url, String body) {}
}
