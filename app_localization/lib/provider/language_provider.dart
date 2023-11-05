import 'package:app_localization/helper/helper.dart';
import 'package:flutter/material.dart';

class LanguageChangeProvider extends ChangeNotifier {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  void changeLanguage(Locale type) async {
    // assign appLocal to type
    _appLocale = type;

    if (type == const Locale('en')) {
      Helper.setLanguageCode('en');
    } else if (type == const Locale('es')) {
      Helper.setLanguageCode('es');
    } else if (type == const Locale('ur')) {
      Helper.setLanguageCode('ur');
    } else {
      Helper.setLanguageCode('de');
    }
    notifyListeners();
  }
}
