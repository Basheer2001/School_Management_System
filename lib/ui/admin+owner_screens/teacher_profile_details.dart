// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_one/models/teacher/teacher_model.dart';
import 'package:project_one/providers/teacher_provider.dart';
import 'package:provider/provider.dart';

class TeacherProfileDetails extends StatelessWidget {
  TeacherProfileDetails({super.key});
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
        appBar: AppBar(
          title: Text('Teacher profile'),
        ),
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
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'name: ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: teacherModel.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: ' ${teacherModel.lastName}', //teacherModel.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Subject: ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: teacherModel.subject,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Father Name: ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: teacherModel.middleName,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Address: ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: teacherModel.address,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ]),
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
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Phone Number: ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: teacherModel.phoneNumber,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ]),
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
