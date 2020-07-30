import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'core/configs/env.dart';
import 'core/configs/secret_reader.dart';
import 'core/injections/injection.dart';
import 'core/networks/dio_setter.dart';
import 'core/translations/list_locales.dart';
import 'flutter_app.dart';

Future<void> mainApp(String env) async {
  var envWithWeb = env;
  if (kIsWeb) {
    envWithWeb = "${env}_web";
  }

  // Always call this if the main method is asynchronous.
  WidgetsFlutterBinding.ensureInitialized();

  // Load the JSON secrets config into memory.
  await SecretReader.initialize();

  // Configure dependency injection.
  configureDependencies(envWithWeb);

  // Set DIO interceptor.
  setInterceptor();

  final theme = ThemeData(
    primarySwatch: env == Env.prod ? Colors.red : Colors.blue,
  );

  // Run Flutter App.
  runApp(
    EasyLocalization(
      path: "translations",
      supportedLocales: ListLocales.locales,
      child: FlutterApp(theme: theme),
    ),
  );
}