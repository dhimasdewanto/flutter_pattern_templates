import 'package:auto_route/auto_route_annotations.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/news/presentation/pages/news_page.dart';
import '../../features/notes/presentation/pages/notes_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import 'guards/auth_guard.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: LoginPage, guards: [AuthGuard]),
    MaterialRoute(page: NewsPage, name: "news_page"),
    MaterialRoute(page: NotesPage),
    CustomRoute(page: SettingsPage),
  ],
)
class $Router {}