import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_pattern_templates/features/presentation/pages/home_page.dart';
import 'package:flutter_pattern_templates/features/presentation/pages/settings_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(
      page: HomePage,
      initial: true,
    ),
    MaterialRoute(
      page: SettingsPage,
    ),
  ],
)
class $Router {}
