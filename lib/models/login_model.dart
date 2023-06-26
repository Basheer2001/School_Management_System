// ignore_for_file: non_constant_identifier_names

class LoginModel {
  // User? user;
  String? email;
  String? password;
  String? token;
  String? error;
  Authorisation? authorisation;
  User? user;
  Owner? owner;
  String? status;
  String? accountType;

  LoginModel(
      {this.email,
      this.password,
      // this.user,
      //this.authorisation,
      this.token,
      this.error,
      this.accountType
      //this.owner,
      // this.status,
      });
  factory LoginModel.fromjson(Map<String, dynamic> json) {
    return LoginModel(
      // user: User.fromjson(json['user'] ?? {}),
      //user: User.fromjson(json['user'] ?? {}),
      //owner: Owner.fromjson(json['owner'] ?? {}),
      //  authorisation: Authorisation.fromjson(json['authorisation']),
      //status: json['status'],
      token: json['token'] ?? '',
      accountType: json['account_type'] ?? '',

      error: json['error'] ?? '',
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

class User {
  int? id;
  String? accountType;
  User({this.id, this.accountType});
  factory User.fromjson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      accountType: json['account_type'] ?? '',
    );
  }
}

class Owner {
  int? id;

  String? firstName;
  String? lastName;
  Owner({this.id, this.firstName, this.lastName});
  factory Owner.fromjson(Map<String, dynamic> json) {
    return Owner(
      id: json['id'],
      firstName: json['f_name'],
      lastName: json['l_name'],
    );
  }
}

class Authorisation {
  String? token;
  String? type;
  Authorisation({this.token, this.type});
  factory Authorisation.fromjson(Map<String, dynamic> json) {
    return Authorisation(token: json['token'], type: json['type']);
  }
}
