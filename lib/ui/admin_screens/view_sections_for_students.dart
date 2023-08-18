// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_one/models/section_model.dart';
import 'package:project_one/providers/admin_provider.dart';
import 'package:project_one/ui/admin_screens/view_students.dart';
import 'package:project_one/ui/student_screens/week%20program.dart';

import 'package:provider/provider.dart';

class ViewSectionsForStudents extends StatelessWidget {
  ViewSectionsForStudents({super.key});
  SectionModle sectionModle = SectionModle();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AdminProivder>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.getSections();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      print('else');
      sectionModle = provider.sectionModle;
      //provider.refreshState();
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('View Sections'),
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: sectionModle.sections!.length,
            itemBuilder: ((context, i) {
              Sections mysections = sectionModle.sections![i];
              //Subjects mySubject = viewTeachersModel.teachers![i].subjects![0];

              return Card(
                child: ListTile(
                  onTap: () {
                    provider.refreshState();

                    int id = mysections.sectionId;
                    print(id);
                    provider.getid(id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewStudentsBySectionId()),
                    );
                  },
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'الشعبة',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: mysections.sectionName, //teacherModel.name,
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
