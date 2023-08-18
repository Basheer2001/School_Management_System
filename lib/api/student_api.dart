import 'dart:convert';

import 'package:project_one/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:project_one/models/student/student_model.dart';

class StudentApi {
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
