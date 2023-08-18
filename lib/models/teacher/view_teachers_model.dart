class ViewTeachersModel {
  List<Teachers>? teachers;
  ViewTeachersModel({this.teachers});
  factory ViewTeachersModel.fromjson(Map<String, dynamic> json) {
    List<Teachers> data = [];
    data = json['teachers']
        .map<Teachers>((json) => Teachers.fromjson(json))
        .toList();
    return ViewTeachersModel(teachers: data);
  }
}

class Teachers {
  int id;
  String firstName;
  String lastName;

  Teachers({
    required this.id,
    required this.firstName,
    required this.lastName,
  });
  factory Teachers.fromjson(Map<String, dynamic> json) {
    return Teachers(
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
