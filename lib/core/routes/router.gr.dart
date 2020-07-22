// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/news/presentation/pages/news_page.dart';
import '../../features/notes/presentation/pages/notes_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';

class Routes {
  static const String homePage = '/';
  static const String settingsPage = '/settings-page';
  static const String notesPage = '/notes-page';
  static const String newsPage = '/news-page';
  static const all = <String>{
    homePage,
    settingsPage,
    notesPage,
    newsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.notesPage, page: NotesPage),
    RouteDef(Routes.newsPage, page: NewsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomePage(),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SettingsPage(),
        settings: data,
      );
    },
    NotesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NotesPage(),
        settings: data,
      );
    },
    NewsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NewsPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushSettingsPage() => push<dynamic>(Routes.settingsPage);

  Future<dynamic> pushNotesPage() => push<dynamic>(Routes.notesPage);

  Future<dynamic> pushNewsPage() => push<dynamic>(Routes.newsPage);
}
