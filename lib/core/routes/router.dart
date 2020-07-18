import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_pattern_templates/features/home/presentation/pages/home_page.dart';
import 'package:flutter_pattern_templates/features/notes/presentation/pages/notes_page.dart';
import 'package:flutter_pattern_templates/features/settings/presentation/pages/settings_page.dart';

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
    MaterialRoute(
      page: NotesPage,
    ),
  ],
)
class $Router {}
