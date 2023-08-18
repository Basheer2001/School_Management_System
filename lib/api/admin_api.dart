import 'package:project_one/main.dart';
import 'package:project_one/models/admin/admin_model.dart';
import 'package:http/http.dart' as http;
import 'package:project_one/models/section_model.dart';
import 'package:project_one/models/student/student_model.dart';
import 'package:project_one/models/student/view_students_model.dart';
import 'dart:convert';

import 'package:project_one/models/teacher/teacher_model.dart';
import 'package:project_one/models/week_program_model.dart';

class AdminApi {
  Future<SectionModle> fetchSections() async {
    var url = Uri.parse('http://192.168.43.47:8000/api/get-my-sections');
    var response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });
    if (response.statusCode == 200) {
      print('api 200');
      final jsonResponse = jsonDecode(response.body);
      return SectionModle.fromjson(jsonResponse);
    } else {
      throw Exception(' cant find');
    }
  }

  Future<ViewStudentsModel> fetchStudentsBySectionId(int id) async {
    var url = Uri.parse(
        'http://192.168.43.47:8000/api/view-students-by-section-id?section_id=$id');
    var response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });
    if (response.statusCode == 200) {
      print('api 200');
      final jsonResponse = jsonDecode(response.body);
      return ViewStudentsModel.fromjson(jsonResponse);
    } else {
      throw Exception(' cant find');
    }
  }

  Future<StudentModel> viewStudentProfileById(int id) async {
    try {
      // انتبه على الرابط
      var url = Uri.parse(
          'http://192.168.43.47:8000/api/view-student-info?student_id=$id');

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
        return StudentModel.fromjson(jsonResponse);
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

  Future<ViewWeekProgram> viewWeekProgramByID(int id) async {
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
        return ViewWeekProgram.fromjson(jsonResponse);
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
}
