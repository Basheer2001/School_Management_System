// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_one/models/superadmin/view_super_admin_model.dart';

import 'package:project_one/models/teacher/view_teachers_model.dart';
import 'package:project_one/providers/admin_provider.dart';

import 'package:project_one/ui/admin+owner_screens/teacher_profile_details.dart';
import 'package:project_one/ui/admin_screens/teachers_list.dart';
import 'package:project_one/ui/teachers/test_profile.dart';
import 'package:provider/provider.dart';

class ViewSuperAdmins extends StatelessWidget {
  ViewSuperAdmins({super.key});
  ViewSuperAdminModel viewSuperAdminModel = ViewSuperAdminModel();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AdminProivder>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.getSuperAdmins();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      print('else');
      viewSuperAdminModel = provider.viewSuperAdminModel;
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
            itemCount: viewSuperAdminModel.superAdmins!.length,
            itemBuilder: ((context, i) {
              SuperAdmins mySuperAdmin = viewSuperAdminModel.superAdmins![i];
              //Subjects mySubject = viewTeachersModel.teachers![i].subjects![0];

              return Card(
                child: ListTile(
                  onTap: () {
                    provider.refreshState();

                    int id = mySuperAdmin.id;
                    print(id);
                    provider.getid(id);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => TeacherProfileDetails()),
                    // );
                  },
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: mySuperAdmin.firstName,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: ' ${mySuperAdmin.lastName}', //teacherModel.name,
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
