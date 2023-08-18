class ViewStudentsModel {
  List<Students>? students;
  ViewStudentsModel({this.students});
  factory ViewStudentsModel.fromjson(Map<String, dynamic> json) {
    List<Students> data = [];
    data = json['students']
        .map<Students>((json) => Students.fromjson(json))
        .toList();
    return ViewStudentsModel(students: data);
  }
}

class Students {
  int id;
  String firstName;
  String lastName;

  Students({
    required this.id,
    required this.firstName,
    required this.lastName,
  });
  factory Students.fromjson(Map<String, dynamic> json) {
    return Students(
      id: json['id'] ?? 0,
      firstName: json['f_name'] ?? '',
      lastName: json['l_name'] ?? '',
    );
  }
}
