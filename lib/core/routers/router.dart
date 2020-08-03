import 'package:auto_route/auto_route_annotations.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/news/presentation/pages/news_page.dart';
import '../../features/notes/presentation/pages/notes_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/utils/presentation/pages/initial_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: InitialPage, initial: true),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: NewsPage),
    MaterialRoute(page: NotesPage),
    CustomRoute(page: SettingsPage),
  ],
)
class $Router {}