import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/configs/app_settings.dart';
import 'core/routers/router.gr.dart';

class FlutterApp extends StatelessWidget {
  const FlutterApp({
    Key key,
    @required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: theme,
      title: AppSettings.appName,
      builder: ExtendedNavigator.builder(
        router: Router(),
      ),
    );
  }
}
