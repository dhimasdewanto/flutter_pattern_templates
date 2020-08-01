import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationInit extends StatelessWidget {
  const LocalizationInit({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('id', 'ID'),
      ],
      path: 'translations',
      fallbackLocale: const Locale('en', 'US'),
      child: child,
    );
  }
}