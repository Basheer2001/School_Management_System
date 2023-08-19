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
      var url = Uri.parse('http://192.168.43.47:8000/api/store-super-admin');
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
    var url =
        Uri.parse('http://192.168.43.47:8000/api/super-admins-management');
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

  Future<SuperAdminModel> viewProfile(int id) async {
    try {
      // انتبه على الرابط
      var url = Uri.parse(
          'http://192.168.43.47:8000/api/get-super-admin-by-id?id=$id');

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
        return SuperAdminModel.fromjson(jsonResponse);
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
