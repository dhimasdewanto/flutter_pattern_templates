// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/news/presentation/pages/news_page.dart';
import '../../features/notes/presentation/pages/notes_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import 'guards/auth_guard.dart';

class Routes {
  static const String homePage = '/';
  static const String loginPage = '/login-page';
  static const String news_page = '/news-page';
  static const String notesPage = '/notes-page';
  static const String settingsPage = '/settings-page';
  static const all = <String>{
    homePage,
    loginPage,
    news_page,
    notesPage,
    settingsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.loginPage, page: LoginPage, guards: [AuthGuard]),
    RouteDef(Routes.news_page, page: NewsPage),
    RouteDef(Routes.notesPage, page: NotesPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
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
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginPage(),
        settings: data,
      );
    },
    NewsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NewsPage(),
        settings: data,
      );
    },
    NotesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NotesPage(),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SettingsPage(),
        settings: data,
      );
    },
  };
}
