import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pattern_templates/core/translations/locale_keys.g.dart';

import '../../../../core/configs/secret_reader.dart';
import '../../../../core/routes/router.gr.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        textTitle: tr(LocaleKeys.welcome),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ExtendedNavigator.of(context).pushNamed(Routes.settingsPage);
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
              tr(LocaleKeys.hello_world),
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("App Key = ${SecretReader.appKey}"),
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).pushNotesPage();
              },
              child: Text(
                tr(LocaleKeys.notes),
              ),
            ),
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).pushNewsPage();
              },
              child: Text(
                tr(LocaleKeys.news),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
