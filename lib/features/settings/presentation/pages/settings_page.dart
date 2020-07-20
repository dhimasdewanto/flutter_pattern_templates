import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pattern_templates/core/translations/list_locales.dart';
import 'package:flutter_pattern_templates/core/translations/locale_keys.g.dart';
import 'package:flutter_pattern_templates/features/utils/presentation/widgets/my_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        textTitle: tr(LocaleKeys.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Text(tr(LocaleKeys.language)),
          DropdownButton<Locale>(
            value: context.locale,
            items: ListLocales.locales.map((locale) {
              return DropdownMenuItem<Locale>(
                value: locale,
                child: Text(locale.toLanguageTag()),
              );
            }).toList(),
            onChanged: (value) {
              context.locale = value;
            },
          ),
        ],
      ),
    );
  }
}
