import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeProvider extends ChangeNotifier {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  void changeLanguage(Locale type) async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    // assign appLocal to type
    _appLocale = type;

    if (type == const Locale('en')) {
      sp.setString("language_code", 'en');
    } else if (type == const Locale('es')) {
      sp.setString("language_code", 'es');
    } else if (type == const Locale('de')) {
      sp.setString("language_code", 'de');
    } else {
      sp.setString("language_code", 'de');
    }
    notifyListeners();
  }
}
