import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  // method to save language code in shared preferences
  static Future setLanguageCode(String code) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("language-code", code);
  }

  // method to retrieve language code from shared preferences
  static Future<String?> getLanguageCode() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('language-code');
  }
}
