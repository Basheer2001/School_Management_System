import 'package:flutter/foundation.dart';
import 'package:project_one/api/admin_api.dart';
import 'package:project_one/models/admin/admin_model.dart';
import 'package:project_one/models/section_model.dart';
import 'package:project_one/models/student/student_model.dart';
import 'package:project_one/models/student/view_students_model.dart';

enum ListScreenState { inital, loading, loaded }

class AdminProivder extends ChangeNotifier {
  ListScreenState state = ListScreenState.inital;
  SectionModle sectionModle = SectionModle();
  ViewStudentsModel viewStudentsModel = ViewStudentsModel();
  StudentModel studentModel = StudentModel();
  int id = 0;
  String dayName = 'sunday';
  int studentId = 0;
  getSections() async {
    sectionModle = await AdminApi().fetchSections();
    state = ListScreenState.loaded;
    notifyListeners();
  }

  refreshState() {
    state = ListScreenState.inital;
    notifyListeners();
  }

  getid(int value) {
    id = value;
    notifyListeners();
  }

  getStudentId(int value) {
    studentId = value;
    notifyListeners();
  }

  getStudentsBySectionId() async {
    viewStudentsModel = await AdminApi().fetchStudentsBySectionId(id);
    state = ListScreenState.loaded;
    notifyListeners();
  }

  getStudentById() async {
    studentModel = await AdminApi().viewStudentProfileById(studentId);
    state = ListScreenState.loaded;
    notifyListeners();
  }

  getDayName(String value) {
    dayName = value;
    notifyListeners();
  }
}
