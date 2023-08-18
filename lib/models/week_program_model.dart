class ViewWeekProgram {
  List<Day>? day;
  ViewWeekProgram({this.day});
  factory ViewWeekProgram.fromjson(Map<String, dynamic> json) {
    List<Day> data = [];
    data = json['schedule'].map<Day>((json) => Day.fromjson(json)).toList();
    return ViewWeekProgram(day: data);
  }
}

class Day {
  int id;
  String subjectName;
  String teacherName;

  Day({
    required this.id,
    required this.subjectName,
    required this.teacherName,
  });
  factory Day.fromjson(Map<String, dynamic> json) {
    return Day(
      id: json['id'] ?? 0,
      subjectName: json['subject_name'] ?? '',
      teacherName: json['teacher_name'] ?? '',
    );
  }
}
