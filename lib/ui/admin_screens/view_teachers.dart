// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_one/models/teacher/view_teachers_model.dart';
import 'package:project_one/providers/teacher_provider.dart';
import 'package:project_one/ui/admin+owner_screens/Teacher_Register.dart';
import 'package:project_one/ui/admin+owner_screens/teacher_profile_details.dart';
import 'package:project_one/ui/admin_screens/teachers_list.dart';
import 'package:project_one/ui/teachers/test_profile.dart';
import 'package:provider/provider.dart';

class ViewTeachers extends StatelessWidget {
  ViewTeachers({super.key});
  ViewTeachersModel viewTeachersModel = ViewTeachersModel();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TeachersProvider>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.getTeachers();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      print('else');
      viewTeachersModel = provider.viewTeachersModel;
      //provider.refreshState();
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('View Teachers'),
          actions: [],
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: viewTeachersModel.teachers!.length,
            itemBuilder: ((context, i) {
              Teachers myteacher = viewTeachersModel.teachers![i];
              //Subjects mySubject = viewTeachersModel.teachers![i].subjects![0];

              return Card(
                child: ListTile(
                  onTap: () {
                    provider.refreshState();

                    int id = myteacher.id;
                    print(id);
                    provider.getid(id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeacherProfileDetails()),
                    );
                  },
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: myteacher.firstName,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: ' ${myteacher.lastName}', //teacherModel.name,
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
