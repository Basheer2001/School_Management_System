import 'package:flutter/material.dart';
import 'package:project_one/models/student/student_model.dart';
import 'package:project_one/providers/admin_provider.dart';
import 'package:provider/provider.dart';

class ViewStudentProfileById extends StatelessWidget {
  ViewStudentProfileById({super.key});
  StudentModel studentModel = StudentModel();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AdminProivder>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.getStudentById();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      print('else');
      studentModel = provider.studentModel;

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
                        text: studentModel.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: ' ${studentModel.lastName}', //teacherModel.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ]),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.all(20),
                //   margin: EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(15)),
                //     border: Border.all(style: BorderStyle.solid),
                //   ),
                //   child: RichText(
                //     text: TextSpan(children: [
                //       TextSpan(
                //         text: 'Subject: ',
                //         style: Theme.of(context).textTheme.bodyLarge,
                //       ),
                //       TextSpan(
                //         text: studentModel.subject,
                //         style: Theme.of(context).textTheme.bodyLarge,
                //       ),
                //     ]),
                //   ),
                // ),
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
                        text: studentModel.fatherName,
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
                        text: studentModel.address,
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
                            text: studentModel.phoneNumber,
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
