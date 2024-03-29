import 'package:flutter/material.dart';

import 'core/configs/env.dart';
import 'core/configs/secret_reader.dart';
import 'core/injections/configure_dependencies.dart';
import 'my_app.dart';

Future<void> mainApp(EnvString env) async {
  /// Always call this if the main method is asynchronous.
  WidgetsFlutterBinding.ensureInitialized();

  // Load the JSON secrets config into memory.
  await SecretReader.initialize();

  configureDependencies(env);

  runApp(const MyApp());
}