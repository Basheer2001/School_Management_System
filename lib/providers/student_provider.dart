//import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:project_one/api/student_api.dart';
import 'package:project_one/models/student/student_model.dart';

enum ListScreenState { inital, loading, loaded }

class StudentProvider with ChangeNotifier {
  ListScreenState state = ListScreenState.inital;
  List<StudentModel> postList = [];
  int counter = 0;

  getStudents() async {
    postList = await StudentApi().fetchStudents();
    state = ListScreenState.loaded;
    notifyListeners();
  }

  getCounter(int value) {
    counter = value;
    notifyListeners();
  }
}
