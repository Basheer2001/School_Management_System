import 'package:flutter/material.dart';
import 'package:project_one/Attendance/check_attendance/st_list.dart';
class ViewStudents extends StatelessWidget{
  const ViewStudents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: StudentsList(),
      ),
    );
  }
}