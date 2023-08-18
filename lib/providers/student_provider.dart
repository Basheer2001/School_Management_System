//import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:project_one/api/admin_api.dart';

import 'package:project_one/api/student_api.dart';

import 'package:project_one/models/student/view_students_model.dart';

enum ListScreenState { inital, loading, loaded }

class StudentProvider with ChangeNotifier {
  ListScreenState state = ListScreenState.inital;
  ViewStudentsModel viewStudentsModel = ViewStudentsModel();

  int id = 0;

  // getStudentsBySectionId() async {
  //   viewStudentsModel = await AdminApi().fetchStudentsBySectionId(id);
  //   state = ListScreenState.loaded;
  //   notifyListeners();
  // }

  refreshState() {
    state = ListScreenState.inital;
    notifyListeners();
  }

  getid(int value) {
    id = value;
    notifyListeners();
  }
}
