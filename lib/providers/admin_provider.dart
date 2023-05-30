import 'package:flutter/foundation.dart';
import 'package:project_one/api/admin_api.dart';
import 'package:project_one/models/admin/admin_model.dart';

enum ListScreenState { inital, loading, loaded }

class AdminProivder extends ChangeNotifier {
  ListScreenState state = ListScreenState.inital;
  List<AdminModel> adminList = [];
  int counter = 0;
  getAdmins() async {
    adminList = await AdminApi().fetchAdmins();
    state = ListScreenState.loaded;
    notifyListeners();
  }

  getCounter(int value) {
    counter = value;
    notifyListeners();
  }
}
