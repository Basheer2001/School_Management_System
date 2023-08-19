import 'package:project_one/models/student/student_model.dart';
import 'package:project_one/models/superadmin/superadmin.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_one/main.dart';
import 'package:project_one/models/superadmin/view_super_admin_model.dart';

class SuperAdminApi {
  Future<SuperAdminModel> superAdminRegister(
      SuperAdminModel superAdminModel) async {
    try {
      var url = Uri.parse('http://192.168.43.47:8000/api/store-teacher');
      final response = await http.post(url,
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(superAdminModel.tojson()));
      if (response.statusCode == 200) {
        return SuperAdminModel.fromjsonRegister(jsonDecode(response.body));
      } else {
        throw 'f';
      }
    } catch (e) {
      print('error:$e');
      throw '$e';
    }
  }

  Future<ViewSuperAdminModel> fetchSuperAdmins() async {
    // final token = SharedService.getToken();
    // print(token);
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
      return ViewSuperAdminModel.fromjson(jsonResponse);
    } else {
      throw Exception(' cant find');
    }
  }

  Future<StudentModel> teacherRegister(StudentModel studentModel) async {
    try {
      var url = Uri.parse('http://192.168.43.47:8000/api/store-teacher');
      final response = await http.post(url,
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(studentModel.tojson()));
      if (response.statusCode == 200) {
        return StudentModel.fromjsonRegister(jsonDecode(response.body));
      } else {
        throw 'f';
      }
    } catch (e) {
      print('error:$e');
      throw '$e';
    }
  }
}
