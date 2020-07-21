import 'package:flutter/material.dart';

abstract class SettingsLocales {
  const SettingsLocales();
  
  static String getLanguageText(Locale locale) {
    switch (locale.toLanguageTag()) {
      case "en-US":
        return "English";
      case "id-ID":
        return "Bahasa Indonesia";
      default:
        return "Unidentified";
    }
  }
}
