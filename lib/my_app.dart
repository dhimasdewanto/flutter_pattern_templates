import 'package:flutter/material.dart';

import 'core/configs/app_configs.dart';
import 'core/routers/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getRouter(),
      title: AppConfigs.appName,
    );
  }
}