import 'package:project_one/models/student/student_model.dart';

class LoginModel {
  StudentModel? student;
  String? email;
  String? password;
  String? token;
  String? error;
  //int? roleId;
  LoginModel({
    this.email,
    this.password,
    this.token,
    this.error,
    this.student,
    //this.roleId,
  });
  factory LoginModel.fromjson(Map<String, dynamic> json) {
    return LoginModel(
      // student: StudentModel.fromjson(json['student'] ?? {}),

      error: json['error'] ?? '',
      token: json['token'] ?? '',
      // roleId: json['roldId'] ?? 0,
    );
  }
  Map<String, dynamic> tojson() {
    Map<String, dynamic> loginMap = {
      'email': email,
      'password': password,
    };
    return loginMap;
  }
}
