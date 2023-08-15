import 'package:flutter/foundation.dart';
import 'package:project_one/api/teacher_api.dart';
import 'package:project_one/models/teacher/teacher_model.dart';
import 'package:project_one/models/teacher/view_teachers_model.dart';

enum ListScreenState { inital, loading, loaded }

class TeachersProvider with ChangeNotifier {
  ViewTeachersModel viewTeachersModel = ViewTeachersModel();
  TeacherModel teacherModel = TeacherModel();
  int id = 0;

  ListScreenState state = ListScreenState.inital;
  // List<secondTest.teachers> adminList = [];
  // int counter = 0;

  getTeachers() async {
    viewTeachersModel = await TeacherApi().fetchTeachers();
    state = ListScreenState.loaded;
    notifyListeners();
  }

  refreshState() {
    state = ListScreenState.inital;
    notifyListeners();
  }

  getTeacherByid() async {
    teacherModel = await TeacherApi().viewProfile(id);
    state = ListScreenState.loaded;
    notifyListeners();
  }

  getid(int value) {
    id = value;
    notifyListeners();
  }
}
