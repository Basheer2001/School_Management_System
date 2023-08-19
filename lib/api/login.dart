import 'dart:convert';

//import 'package:project_one/constants/apis.dart';
import 'package:project_one/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  Future<LoginModel> login(LoginModel login) async {
    try {
      var url = Uri.parse('http://192.168.43.47:8000/api/login');
      final response = await http.post(url, body: login.tojson());
      if (response.statusCode == 200) {
        return LoginModel.fromjson(jsonDecode(response.body));
      } else {
        throw 'f';
      }
    } catch (e) {
      print('error:$e');
      throw '$e';
    }
  }
}
//'http://192.168.43.47:8000/api/login'