import 'dart:convert';

import 'package:project_one/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') != null ? true : false;
  }

  static Future<void> setLoginDetails(LoginModel model) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', model.token.toString());
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    //  prefs.remove('token');
    prefs.clear();
  }

  //
  //
  // يلي تحت بدهن بجريب مالي مجربهن

  // static Future<void> saveToken(LoginModel model) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   var token = prefs.setString('token', model.token.toString());
  // }

  static Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    print('trying to save token');
    String mytoken = prefs.getString('token').toString();

    return mytoken;
  }

  static Future<void> saveRole(LoginModel model) async {
    final prefs = await SharedPreferences.getInstance();
    var role = prefs.setString('role', model.role.toString());
  }

  static Future<String> getRole() async {
    final prefs = await SharedPreferences.getInstance();
    print('trying to save role');
    String myrole = prefs.getString('role').toString();

    return myrole;
  }
}
