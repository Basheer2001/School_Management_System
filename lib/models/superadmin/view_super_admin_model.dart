class ViewSuperAdminModel {
  List<SuperAdmins>? superAdmins;
  ViewSuperAdminModel({this.superAdmins});
  factory ViewSuperAdminModel.fromjson(Map<String, dynamic> json) {
    List<SuperAdmins> data = [];
    data = json['super_admins']
        .map<SuperAdmins>((json) => SuperAdmins.fromjson(json))
        .toList();
    return ViewSuperAdminModel(superAdmins: data);
  }
}

class SuperAdmins {
  int id;
  String firstName;
  String lastName;

  SuperAdmins({
    required this.id,
    required this.firstName,
    required this.lastName,
  });
  factory SuperAdmins.fromjson(Map<String, dynamic> json) {
    return SuperAdmins(
      id: json['id'] ?? 0,
      firstName: json['f_name'] ?? '',
      lastName: json['l_name'] ?? '',
    );
  }
}

// class Subjects {
//   int id;
//   String subjectName;

//   Subjects({required this.id, required this.subjectName});
//   factory Subjects.fromjson(Map<String, dynamic> json) {
//     return Subjects(
//       id: json['id'] ?? 0,
//       subjectName: json['f_name'] ?? '',
//     );
//   }
// }
