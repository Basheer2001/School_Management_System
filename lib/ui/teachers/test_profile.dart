// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_one/models/teacher/teacher_model.dart';
import 'package:project_one/providers/teacher_provider.dart';
import 'package:provider/provider.dart';

class TestProfile extends StatelessWidget {
  TestProfile({super.key});
  TeacherModel teacherModel = TeacherModel();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TeachersProvider>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.getTeacherByid();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      print('else');
      teacherModel = provider.teacherModel;

      //viewTeachersModel = provider.viewTeachersModel;
      //provider.refreshState();
    }
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Text('name'),
              Text(
                teacherModel.name.toString(),
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
