import 'package:flutter/material.dart';
import 'package:project_one/api/admin_api.dart';
import 'package:project_one/models/superadmin/superadmin.dart';
import 'package:project_one/models/teacher/teacher_model.dart';
import 'package:project_one/providers/admin_provider.dart';

import 'package:provider/provider.dart';

class SuperAdminsProfile extends StatelessWidget {
  SuperAdminsProfile({super.key});
  SuperAdminModel superAdminModel = SuperAdminModel();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AdminProivder>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.getSuperAdminById();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      print('else');
      superAdminModel = provider.superAdminModel;

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
                        text: superAdminModel.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text:
                            ' ${superAdminModel.lastName}', //teacherModel.name,
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
                        text: 'Father Name: ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: superAdminModel.middleName,
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
                        text: superAdminModel.address,
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
                            text: superAdminModel.phoneNumber,
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
