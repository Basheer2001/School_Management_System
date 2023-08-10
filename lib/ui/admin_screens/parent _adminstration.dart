// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/constants/color.dart';
import 'package:project_one/ui/admin+owner_screens/Teacher_Register.dart';
import 'package:project_one/ui/admin+owner_screens/parent_register.dart';
import 'package:project_one/ui/admin+owner_screens/student_register.dart';
import 'package:project_one/ui/admin_screens/select_year_for_students_administration.dart';
import 'package:project_one/ui/admin_screens/view_parent.dart';
import 'package:project_one/ui/admin_screens/view_sections.dart';
import 'package:project_one/ui/admin_screens/view_teachers.dart';

class ParentAdminstration extends StatelessWidget {
  const ParentAdminstration({super.key});

  @override
  Widget build(BuildContext context) {
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
                'Parent Adminstration',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewParent()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: kPrimaryColor),
                  child: Text(
                    'View Parent',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ParentRegister()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: kPrimaryColor),
                  child: Text(
                    'Parent Register ',
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
