// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_one/models/teacher/teacher_model.dart';

class ParentProfile extends StatelessWidget {
  TeacherModel teacherModel = TeacherModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: ListView(
              children: [
                CircleAvatar(
                  child: Image.asset('images/parentprofile.png'),
                  radius: 80.0,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Name :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Birthdate :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '12/11/2000',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'class :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Name :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Birthdate :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
