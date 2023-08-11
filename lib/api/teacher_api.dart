import 'package:project_one/models/teacher/view_teachers_model.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TeacherApi {
  Future<ViewTeachersModel> fetchTeachers() async {
    final token = SharedService.getToken();
    print(token);
    print('api');
    // انتبه ععلى الروابط
    var url = Uri.parse('http://192.168.43.47:8000/api/teachers-management');
    var response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });
    if (response.statusCode == 200) {
      print('api 200');
      final jsonResponse = jsonDecode(response.body);
      return ViewTeachersModel.fromjson(jsonResponse);
    } else {
      throw Exception(' cant find');
    }
  }
}
