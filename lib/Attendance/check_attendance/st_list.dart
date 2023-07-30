import 'package:flutter/material.dart';
import 'package:project_one/Attendance/check_attendance/st_tile.dart';


class StudentsList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StudentsTile(),
        StudentsTile(),
        StudentsTile(),
      ],

    );
  }
}