import 'package:flutter/foundation.dart';
import 'package:project_one/api/teacher_api.dart';
import 'package:project_one/models/teacher/view_teachers_model.dart';

enum ListScreenState { inital, loading, loaded }

class TeachersProvider with ChangeNotifier {
  ViewTeachersModel secondTest = ViewTeachersModel();

  ListScreenState state = ListScreenState.inital;
  // List<secondTest.teachers> adminList = [];
  int counter = 0;

  getTeachers() async {
    secondTest = await TeacherApi().fetchTeachers();
    state = ListScreenState.loaded;
    notifyListeners();
  }

  getCounter(int value) {
    counter = value;
    notifyListeners();
  }
}
