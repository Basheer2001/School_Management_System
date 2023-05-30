class AdminModel {
  int id;
  AdminModel({required this.id});
  factory AdminModel.fromjson(Map<String, dynamic> json) {
    return AdminModel(
      id: json['id'],
    );
  }
}
