import 'dart:convert';

import 'package:project_one/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('login_details') != null ? true : false;
  }

  static Future<void> setLoginDetails(LoginModel model) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(
        'login_details', jsonEncode(<String, dynamic>{'token': model.token}));
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
  }
}
