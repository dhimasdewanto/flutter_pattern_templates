import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../core/configs/secret_reader.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../news/presentation/pages/news_page.dart';
import '../../../notes/presentation/pages/notes_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  static const _batteryPlatform =
      MethodChannel('com.dhimasdewanto.flutter_pattern_templates/battery');
  static const _batteryMethod = "get_battery_level";

  static const _activityPlatform =
      MethodChannel('com.dhimasdewanto.flutter_pattern_templates/activity');
  static const _activityMethod = "new_activity";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        textTitle: tr(LocaleKeys.welcome),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Get.to(const SettingsPage()),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              tr(LocaleKeys.hello_world),
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 10.0),
            Text("App Key = ${SecretReader.appKey}"),
            const SizedBox(height: 10.0),
            FutureBuilder<String>(
              future: _getBatteryLevelText(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text("Loading Battery...");
                }
                if (snapshot.hasError) {
                  return const Text("No battery found.");
                }
                return Text(snapshot.data);
              },
            ),
            const SizedBox(height: 10.0),
            RaisedButton(
              onPressed: () => Get.to(const NotesPage()),
              child: Text(
                tr(LocaleKeys.notes),
              ),
            ),
            const SizedBox(height: 10.0),
            RaisedButton(
              onPressed: () => Get.to(const NewsPage()),
              child: Text(
                tr(LocaleKeys.news),
              ),
            ),
            const SizedBox(height: 10.0),
            RaisedButton(
              onPressed: _goToAndroidActivity,
              child: const Text(
                "Android Activity",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _goToAndroidActivity() async {
    if (Platform.isAndroid == false) {
      return;
    }

    await _activityPlatform.invokeMethod(_activityMethod);
  }

  Future<String> _getBatteryLevelText() async {
    if (Platform.isAndroid == false) {
      return "Only Support Android, for now";
    }

    String batteryLevel;
    try {
      final int result = await _batteryPlatform.invokeMethod(_batteryMethod);
      batteryLevel = 'Battery Level From Platform Channel = $result%';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    } catch (e) {
      batteryLevel = "Unknown error";
    }
    return batteryLevel;
  }
}
