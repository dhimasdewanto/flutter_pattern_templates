import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/configs/env.dart';
import 'core/configs/secret_reader.dart';
import 'core/injections/injection.dart';
import 'core/networks/dio_setter.dart';
import 'flutter_app.dart';

Future<void> mainApp(String env) async {
  var envWithWeb = env;
  if (GetPlatform.isWeb) {
    envWithWeb = "${env}_web";
  }

  // Always call this if the main method is asynchronous.
  WidgetsFlutterBinding.ensureInitialized();

  // Load the JSON secrets config into memory.
  await SecretReader.initialize();

  // Initialize Get Storage.
  await GetStorage.init();

  // Configure dependency injection.
  configureDependencies(envWithWeb);

  // Set DIO interceptor.
  setInterceptor();

  final theme = ThemeData(
    primarySwatch: env == Env.prod ? Colors.red : Colors.blue,
  );

  // Run Flutter App.
  runApp(
    FlutterApp(theme: theme),
  );
}
