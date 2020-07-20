import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pattern_templates/core/configs/secret_reader.dart';
import 'package:flutter_pattern_templates/core/routes/router.gr.dart';
import 'package:flutter_pattern_templates/core/translations/locale_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.welcome.tr()),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ExtendedNavigator.of(context).pushSettingsPage();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              LocaleKeys.hello_world.tr(),
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("App Key = ${SecretReader.appKey}"),
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).pushNotesPage();
              },
              child: Text(LocaleKeys.notes.tr()),
            ),
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).pushNewsPage();
              },
              child: Text(LocaleKeys.news.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
