import 'dart:convert';

import 'package:flutter/services.dart';

// ignore: avoid_classes_with_only_static_members
abstract class SecretReader {
  static Map<String, dynamic>? _config;
  
  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('configs/secrets.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String get appKey => _config?["app_key"] as String? ?? "";

  static String get newsApiKey => _config?["news_api_key"] as String? ?? "";

  static String get sembastPassword => _config?["sembast_password"] as String? ?? "";
}