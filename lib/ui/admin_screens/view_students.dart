// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:project_one/models/student/view_students_model.dart';
import 'package:project_one/providers/admin_provider.dart';
import 'package:project_one/ui/admin+owner_screens/view_student_profile_by_id.dart';

import 'package:project_one/ui/admin_screens/class_adminstration.dart';

import 'package:provider/provider.dart';

class ViewStudentsBySectionId extends StatelessWidget {
  ViewStudentsModel viewStudentsModel = ViewStudentsModel();
  ViewStudentsBySectionId({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AdminProivder>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.getStudentsBySectionId();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      viewStudentsModel = provider.viewStudentsModel;
      //provider.refreshState();
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('View Students'),
          actions: [],
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: viewStudentsModel.students!.length,
            itemBuilder: ((context, i) {
              Students myStudent = viewStudentsModel.students![i];
              //Subjects mySubject = viewTeachersModel.teachers![i].subjects![0];

              return Card(
                child: ListTile(
                  onTap: () {
                    provider.refreshState();

                    int id = myStudent.id;
                    print(id);
                    provider.getStudentId(id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewStudentProfileById()),
                    );
                  },
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: myStudent.firstName,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: ' ${myStudent.lastName}', //teacherModel.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ]),
                  ),

                  //subtitle: Text(myteacher.lastName),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
