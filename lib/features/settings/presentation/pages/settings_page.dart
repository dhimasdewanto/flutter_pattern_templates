import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/localization/locale_keys.g.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';

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
          Text(tr(LocaleKeys.settings)),
          DropdownButton<Locale>(
            value: context.locale,
            items: const [
              DropdownMenuItem<Locale>(
                value: Locale("en", "US"),
                child: Text("English"),
              ),
              DropdownMenuItem<Locale>(
                value: Locale("id", "ID"),
                child: Text("Bahasa Indonesia"),
              ),
            ],
            onChanged: (value) {
              context.locale = value;
            },
          ),
        ],
      ),
    );
  }
}
