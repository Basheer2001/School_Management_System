class TeacherModel {
  int? id;
  String? name;
  String? lastName;
  String? middleName;
  String? address;
  String? phoneNumber;
  String? subject;
  String? email;
  String? nationalId;
  int? testSubject;
  String? password;
  String? keyyy;

//  List<Subjects>? subjects;

  // final String classes;
  TeacherModel({
    this.id,
    this.name,
    this.lastName,
    this.middleName,
    this.address,
    this.phoneNumber,
    this.email,
    this.subject,
    this.nationalId,
    this.testSubject,
    this.password,
    this.keyyy,

    // this.subjects,
  });
  factory TeacherModel.fromjson(Map<String, dynamic> json) {
    // List<Subjects> data = [];
    // data = json['subject']
    //     .map<Subjects>((json) => Subjects.fromjson(json))
    //     .toList();
    return TeacherModel(
      id: json['id'] ?? 0,
      name: json['f_name'] ?? '',
      lastName: json['l_name'] ?? '',
      middleName: json['m_name'] ?? '',
      address: json['address'] ?? '',
      phoneNumber: json['phone'] ?? '',
      subject: json['subject'] ?? '',
      email: json['email'],
      nationalId: json['nationalID'] ?? '',
      password: json['password'] ?? '',
      keyyy: json['keyyy'] ?? '',
      // subjects: data,
    );
  }
  factory TeacherModel.fromjsonRegister(Map<String, dynamic> json) {
    return TeacherModel(
      keyyy: json['keyyy'] ?? '',
    );
  }
  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = {
      'f_name': name,
      'l_name': lastName,
      'm_name': middleName,
      'password': password,
      'phone': phoneNumber,
      'address': address,
      'nationalID': nationalId
    };
    return map;
  }
}

class Subjects {
  int id;
  String subjectName;

  Subjects({required this.id, required this.subjectName});
  factory Subjects.fromjson(Map<String, dynamic> json) {
    return Subjects(
      id: json['id'] ?? 0,
      subjectName: json['f_name'] ?? '',
    );
  }
}
