// ignore_for_file: non_constant_identifier_names

class LoginModel {
  String? email;
  String? password;
  String? token;
  String? role;

  LoginModel({this.email, this.password, this.token, this.role});
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
