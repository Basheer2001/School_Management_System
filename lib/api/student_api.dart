import 'dart:convert';

import 'package:project_one/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:project_one/models/student/student_model.dart';

class StudentApi {
  Future<LoginModel> login(LoginModel login) async {
    try {
      var url = Uri.parse('http://192.168.43.103:8000/api/publiclogin');
      final response = await http.post(url, body: login.tojson());
      if (response.statusCode == 200 || response.statusCode == 400) {
        return LoginModel.fromjson(jsonDecode(response.body));
      } else {
        throw 'f';
      }
    } catch (e) {
      throw '$e';
    }
  }

  Future<List<StudentModel>> fetchStudents() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      final result = parsed
          .map<StudentModel>((item) => StudentModel.fromjson(item))
          .toList();
      return result;
    } else {
      throw Exception(' cant find');
    }
  }
}
