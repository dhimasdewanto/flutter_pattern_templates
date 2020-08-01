import 'package:flutter/material.dart';

import 'core/configs/app_settings.dart';
import 'features/utils/presentation/pages/initial_page.dart';

class FlutterApp extends StatelessWidget {
  const FlutterApp({
    Key key,
    @required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: AppSettings.appName,
      home: const InitialPage(),
    );
  }
}
