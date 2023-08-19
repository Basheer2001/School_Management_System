class SuperAdminModel {
  int? id;
  String? name;
  String? lastName;
  String? middleName;
  String? address;
  String? phoneNumber;
  String? subject;
  String? email;
  String? nationalId;
  //int testSubject = 4;
  String? password;
  String? keyyy;
  String? status;

//  List<Subjects>? subjects;

  // final String classes;
  SuperAdminModel({
    this.id,
    this.name,
    this.lastName,
    this.middleName,
    this.address,
    this.phoneNumber,
    this.email,
    this.subject,
    this.nationalId,
    //this.testSubject,
    this.password,
    this.keyyy,
    this.status,

    // this.subjects,
  });
  factory SuperAdminModel.fromjson(Map<String, dynamic> json) {
    // List<Subjects> data = [];
    // data = json['subject']
    //     .map<Subjects>((json) => Subjects.fromjson(json))
    //     .toList();
    return SuperAdminModel(
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
      //keyyy: json['keyyy'] ?? '',
      // subjects: data,
    );
  }
  factory SuperAdminModel.fromjsonRegister(Map<String, dynamic> json) {
    return SuperAdminModel(
      keyyy: json['keyyy'],
    );
  }
  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = {
      'f_name': name,
      'l_name': lastName,
      'm_name': middleName,
      'email': email,
      'password': password,
      'phone': phoneNumber,
      'address': address,
      'nationalID': nationalId,
      //'subject': testSubject,
    };
    return map;
  }
}
