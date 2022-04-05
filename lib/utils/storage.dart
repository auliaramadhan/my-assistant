import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppStorage {
  AppStorage._();
  static const _storage = FlutterSecureStorage();

  static const keyUsername = 'username';
  static const keyName = 'name';
  static const keyUserData = 'user-data';

  static Future setData(String key, String data) async => await _storage.write(key: key, value: data);
  static Future getData(String key) async => await _storage.read(key: key);

  static Future<String?> getUsername() async => await _storage.read(key: keyUsername);

  static Future<List<String>?> getUserData() async {
    final value = await _storage.read(key: keyUserData);

    return value == null ? null : List<String>.from(json.decode(value));
  }
}
