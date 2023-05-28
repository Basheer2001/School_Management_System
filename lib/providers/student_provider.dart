import 'package:flutter/cupertino.dart';
import 'package:project_one/api/student_api.dart';
import 'package:project_one/models/student/student_model.dart';

enum ListScreenState { inital, loading, loaded }

class SecondPostProvider with ChangeNotifier {
  ListScreenState state = ListScreenState.inital;
  List<StudentModel> postList = [];
  int counter = 0;

  getPosts() async {
    postList = await StudentApi().fetchStudents();
    state = ListScreenState.loaded;
    notifyListeners();
  }

  getCounter(int value) {
    counter = value;
    notifyListeners();
  }
}
