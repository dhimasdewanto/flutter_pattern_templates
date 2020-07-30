import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/configs/secret_reader.dart';
import '../../../../core/routes/router.gr.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  static const _batteryPlatform = MethodChannel('com.dhimasdewanto.flutter_pattern_templates/battery');
  static const _batteryMethod = "get_battery_level";

  static const _activityPlatform = MethodChannel('com.dhimasdewanto.flutter_pattern_templates/activity');
  static const _activityMethod = "new_activity";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        textTitle: tr(LocaleKeys.welcome),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              ExtendedNavigator.of(context).pushSettingsPage();
            },
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
                if (snapshot.hasData == false) {
                  return const Text("Loading Battery...");
                }
                return Text(snapshot.data);
              },
            ),
            const SizedBox(height: 10.0),
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).pushNotesPage();
              },
              child: Text(
                tr(LocaleKeys.notes),
              ),
            ),
            const SizedBox(height: 10.0),
            RaisedButton(
              onPressed: () {
                ExtendedNavigator.of(context).pushNewsPage();
              },
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
