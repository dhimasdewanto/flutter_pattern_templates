import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'core/configs/app_settings.dart';
import 'features/presentation/pages/home_page.dart';

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      title: AppSettings.appName,
      home: const HomePage(),
    );
  }
}