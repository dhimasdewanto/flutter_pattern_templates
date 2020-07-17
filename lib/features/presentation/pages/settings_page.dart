import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../core/translations/list_locales.dart';
import '../../../core/translations/locale_keys.g.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settings.tr()),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Text(LocaleKeys.language.tr()),
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
