// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_pattern_templates/features/presentation/pages/home_page.dart';
import 'package:flutter_pattern_templates/features/presentation/pages/settings_page.dart';

class Routes {
  static const String homePage = '/';
  static const String settingsPage = '/settings-page';
  static const all = <String>{
    homePage,
    settingsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (RouteData data) {
      var args =
          data.getArgs<HomePageArguments>(orElse: () => HomePageArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(key: args.key),
        settings: data,
      );
    },
    SettingsPage: (RouteData data) {
      var args = data.getArgs<SettingsPageArguments>(
          orElse: () => SettingsPageArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsPage(key: args.key),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future<dynamic> pushHomePage({
    Key key,
  }) =>
      pushNamed<dynamic>(
        Routes.homePage,
        arguments: HomePageArguments(key: key),
      );

  Future<dynamic> pushSettingsPage({
    Key key,
  }) =>
      pushNamed<dynamic>(
        Routes.settingsPage,
        arguments: SettingsPageArguments(key: key),
      );
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HomePage arguments holder class
class HomePageArguments {
  final Key key;
  HomePageArguments({this.key});
}

//SettingsPage arguments holder class
class SettingsPageArguments {
  final Key key;
  SettingsPageArguments({this.key});
}
