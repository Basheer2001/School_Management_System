import 'package:project_one/models/teacher/teacher_model.dart';
import 'package:project_one/models/teacher/view_teachers_model.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_one/main.dart';

class TeacherApi {
  Future<ViewTeachersModel> fetchTeachers() async {
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
      return ViewTeachersModel.fromjson(jsonResponse);
    } else {
      throw Exception(' cant find');
    }
  }

  Future<ViewTeachersModel> fetchTeachersTwo() async {
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
      return ViewTeachersModel.fromjson(jsonResponse);
    } else {
      throw Exception(' cant find');
    }
  }
  // Future<TeacherModel> viewProfile(int id) async {
  //   try {
  //     // انتبه على الرابط
  //     var url = Uri.parse('http://192.168.43.47:8000/api/get-teacher-by-id');

  //     var response = await http.post(
  //       url,
  //       headers: {
  //         'Authorization': 'Bearer $token',
  //         'Content-Type': 'application/json',
  //       },
  //       body: jsonEncode({'id': id}),
  //     );
  //     if (response.statusCode == 200) {
  //       print('api 200');
  //       print(token);
  //       final jsonResponse = jsonDecode(response.body);
  //       return TeacherModel.fromjson(jsonResponse);
  //     } else {
  //       print(response.statusCode);
  //       print('api id :$id ');
  //       throw Exception(' c');
  //     }
  //   } catch (e) {
  //     print(e);
  //     throw (e);
  //   }
  // }
  Future<TeacherModel> viewProfile(int id) async {
    try {
      // انتبه على الرابط
      var url =
          Uri.parse('http://192.168.43.47:8000/api/get-teacher-by-id?id=$id');

      var response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        print('api 200');
        print(token);
        final jsonResponse = jsonDecode(response.body);
        return TeacherModel.fromjson(jsonResponse);
      } else {
        print(response.statusCode);
        print('api id :$id ');
        throw Exception(' c');
      }
    } catch (e) {
      print(e);
      throw (e);
    }
  }

  Future<TeacherModel> teacherRegister(TeacherModel teacherModel) async {
    try {
      var url = Uri.parse('http://192.168.43.47:8000/api/store-teacher');
      final response = await http.post(url,
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(teacherModel.tojson()));
      if (response.statusCode == 200) {
        return TeacherModel.fromjsonRegister(jsonDecode(response.body));
      } else {
        throw 'f';
      }
    } catch (e) {
      print('error:$e');
      throw '$e';
    }
  }
}
