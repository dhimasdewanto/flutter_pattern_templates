import 'package:flutter/material.dart';

import 'core/configs/app_configs.dart';
import 'feature/news/presentation/pages/news_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppConfigs.appName,
      home: NewsListPage(),
    );
  }
}