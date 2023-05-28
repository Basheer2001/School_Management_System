class TeachcherModel {
  int id;
  String name;
  String secondName;
  String address;
  int phoneNumber;
  String subject;
  String experinces;
  // final String classes;
  TeachcherModel({
    required this.id,
    required this.name,
    required this.secondName,
    required this.address,
    required this.phoneNumber,
    required this.subject,
    required this.experinces,
    //required this.classes,
  });
  factory TeachcherModel.fromjson(Map<String, dynamic> json) {
    return TeachcherModel(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        secondName: json['secondName'] ?? '',
        address: json['address'] ?? '',
        phoneNumber: json['phoneNumber'] ?? 0,
        subject: json['subject'] ?? '',
        experinces: json['experinces'] ?? ''
        //classes: data,
        );
  }
}

class Classes {
  final String className;
  Classes({required this.className});
}
