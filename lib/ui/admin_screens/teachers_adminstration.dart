// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/constants/color.dart';
import 'package:project_one/providers/teacher_provider.dart';
import 'package:project_one/ui/admin+owner_screens/Teacher_Register.dart';
import 'package:project_one/ui/admin+owner_screens/student_register.dart';
import 'package:project_one/ui/admin_screens/select_year_for_students_administration.dart';
import 'package:project_one/ui/admin_screens/view_sections.dart';
import 'package:project_one/ui/admin_screens/view_teachers.dart';
import 'package:provider/provider.dart';

class TeachersAdminstration extends StatelessWidget {
  const TeachersAdminstration({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TeachersProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          width: double.infinity,
          // decoration: BoxDecoration(color:Colors.blueGrey),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Teachers Adminstration',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    provider.refreshState();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewTeachers()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: kPrimaryColor),
                  child: Text(
                    'View Teachers',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    provider.refreshState();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeacherRegister()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: kPrimaryColor),
                  child: Text(
                    'Teacher Register ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
