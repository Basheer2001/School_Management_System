// ignore_for_file: non_constant_identifier_names

class LoginModel {
  // User? user;
  String? email;
  String? password;
  String? token;
  String? error;

  String? status;
  String? role;

  LoginModel({this.email, this.password, this.token, this.error, this.role});
  factory LoginModel.fromjson(Map<String, dynamic> json) {
    return LoginModel(
      token: json['token'] ?? '',
      role: json['role'] ?? '',
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
