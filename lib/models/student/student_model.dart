class StudentModel {
  int? id;
  String? name;
  String? lastName;
  String? fatherName;
  String? phoneNumber;
  String? address;
  List<MarksModel>? marks;
  StudentModel({
    this.id,
    this.name,
    this.lastName,
    this.fatherName,
    this.address,
    this.phoneNumber,
    this.marks,
  });
  factory StudentModel.fromjson(Map<String, dynamic> json) {
    // List<MarksModel> data = [];
    // data = json['marks']
    //     .map<MarksModel>((json) => MarksModel.fromjson(json))
    //     .toList();
    return StudentModel(
      // should be same as back end
      id: json['id'] ?? 0,
      name: json['f_name'] ?? '',
      lastName: json['l_name'] ?? '',
      fatherName: json['m_name'] ?? '',
      address: json['address'] ?? '',
      phoneNumber: json['phone'] ?? '',
      // marks: data,
    );
  }
}

class MarksModel {
  final int math;
  final int physics;
  final int science;
  final int chemistry;
  final int arabic;
  final int english;
  MarksModel({
    required this.math,
    required this.physics,
    required this.science,
    required this.chemistry,
    required this.arabic,
    required this.english,
  });
  factory MarksModel.fromjson(Map<String, dynamic> json) {
    return MarksModel(
      math: json['math'] ?? 0,
      physics: json['physics'] ?? 0,
      science: json['science'] ?? 0,
      chemistry: json['chemistry'] ?? 0,
      arabic: json['arabic'] ?? 0,
      english: json['english'] ?? 0,
    );
  }
}
