import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  // set user email
  static Future setUserEmail(String email) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('email', email);
  }

  // set user password
  static Future setUserPassword(String password) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('password', password);
  }

  // get user email
  static Future<String?> getUserEmail() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? email = sp.getString('email');
    return email;
  }

  // get user email
  static Future<String?> getUserPassword() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('password');
  }

  // static Future<String?> getUserEmail() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   String? email = sp.getString('email');
  //   return email;
  // }
  // static Future setName() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   sp.setString('name', 'Khubaib');
  // }

  // static Future<String?> getName() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   String? name = sp.getString('name');
  //   return name;
  // }
}
