import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/configs/app_settings.dart';
import 'core/translations/app_translations/app_translations.dart';
import 'features/utils/presentation/pages/initial_page.dart';

class FlutterApp extends StatelessWidget {
  const FlutterApp({
    Key key,
    @required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      locale: const Locale('en', 'US'),
      translations: AppTranslations(),
      title: AppSettings.appName,
      home: const InitialPage(),
    );
  }
}
