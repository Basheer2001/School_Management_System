class SectionModle {
  List<Sections>? sections;
  SectionModle({this.sections});
  factory SectionModle.fromjson(Map<String, dynamic> json) {
    List<Sections> data = [];
    data = json['sections']
        .map<Sections>((json) => Sections.fromjson(json))
        .toList();
    return SectionModle(sections: data);
  }
}

class Sections {
  int sectionId;
  String sectionName;
  String levelName;
  Sections(
      {required this.sectionId,
      required this.sectionName,
      required this.levelName});
  factory Sections.fromjson(Map<String, dynamic> json) {
    return Sections(
      sectionId: json['sectionId'],
      sectionName: json['section_name'],
      levelName: json['level_name'],
    );
  }
}
