import 'dart:convert';

import 'package:api/models/user_model.dart';
import 'package:http/http.dart' as http;

class Services {
  static Future<List<UserModel>> getData() async {
    List<UserModel> userData = [];

    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        for (var i in data) {
          userData.add(UserModel.fromJson(i));
        }
        return userData;
      } else {
        return userData;
      }
    } catch (e) {
      print(e.toString());
      throw Exception('error');
    }
  }
}
