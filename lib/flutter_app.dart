import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/configs/app_settings.dart';
import 'features/home/presentation/pages/home_page.dart';

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
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      title: AppSettings.appName,
      home: const HomePage(),
    );
  }
}
