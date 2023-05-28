class StudentRegisterModel {
  String name;
  String secondName;
  String fatherName;
  int phoneNumber;
  String address;
  List<MarksModel>? marks;
  StudentRegisterModel({
    required this.name,
    required this.secondName,
    required this.fatherName,
    required this.address,
    required this.phoneNumber,
    this.marks,
  });
  factory StudentRegisterModel.fromjson(Map<String, dynamic> json) {
    List<MarksModel> data = [];
    data = json['marks']
        .map<MarksModel>((json) => MarksModel.fromjson(json))
        .toList();
    return StudentRegisterModel(
      // should be same as back end

      name: json['name'] ?? '',
      secondName: json['secondName'] ?? '',
      fatherName: json['fatherName'] ?? '',
      address: json['address'] ?? '',
      phoneNumber: json['phoneNumber'] ?? 0,
      marks: data,
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
