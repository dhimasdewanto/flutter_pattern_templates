import 'package:flutter/material.dart';

import '../../../utils/presentation/widgets/my_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        textTitle: "Settings",
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // Text(Lk.language.tr),
          // DropdownButton<Locale>(
          //   value: Get.locale,
          //   items: const [
          //     DropdownMenuItem<Locale>(
          //       value: Locale("en", "US"),
          //       child: Text("English"),
          //     ),
          //     DropdownMenuItem<Locale>(
          //       value: Locale("id", "ID"),
          //       child: Text("Bahasa Indonesia"),
          //     ),
          //   ],
          //   onChanged: (value) {
          //     Get.updateLocale(value);
          //   },
          // ),
        ],
      ),
    );
  }
}
