import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:solid_examples/src/single_responsability/auth_repository.dart';

class User {
  const User({this.name, this.email, this.password});
  final String email;
  final String password;
  final String name;

  Map<String, dynamic> toMap() => {};
}

class SignUp extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

  /// Create a new user with the user info
  Future<User> signUp({
    String name,
    String password,
    String email,
  }) async {
    final newUser = User(
      email: email,
      password: password,
      name: name,
    );

    await _authRepository.signUpUser(newUser);
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
