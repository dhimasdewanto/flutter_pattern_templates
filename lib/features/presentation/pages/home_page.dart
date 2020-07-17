import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/secret_reader.dart';
import '../../../core/generated_languages/locale_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.welcome.tr()),
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
          ],
        ),
      ),
    );
  }
}
