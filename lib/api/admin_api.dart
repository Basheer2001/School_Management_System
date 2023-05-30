import 'package:project_one/models/admin/admin_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AdminApi {
  Future<List<AdminModel>> fetchAdmins() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      final result =
          parsed.map<AdminModel>((item) => AdminModel.fromjson(item)).toList();
      return result;
    } else {
      throw Exception(' cant find');
    }
  }
}
