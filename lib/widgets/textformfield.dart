// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:project_one/models/login_model.dart';
import 'package:project_one/models/student/student_model.dart';
import 'package:project_one/models/teacher_model.dart';

class FirstCustomTextFormField extends StatelessWidget {
  final String name;
  final String hintText;
  final String validationError;
  IconData icon;
  TeachcherModel? teacherModel;
  LoginModel? requestModel;
  StudentModel? studentModel;
  //var validation;
  String? type;
  final String purpose;
  FirstCustomTextFormField(
      {Key? key,
      required this.name,
      required this.hintText,
      required this.validationError,
      required this.icon,
      this.studentModel,
      this.teacherModel,
      //required this.validation,
      this.requestModel,
      required this.purpose,
      this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
              ]),
          child: TextFormField(
            validator: (value) => value!.length < 4 ? validationError : null,
            onSaved: (input) {
              // switch (purpose) {
              //   case 'login':
              //     switch (name) {
              //       case 'email':
              //         requestModel!.email = input;
              //         break;
              //       case 'password':
              //         requestModel!.password = input;
              //         break;
              //     }
              //     break;
              //   case 'register':
              //     switch (type) {
              //       case 'parent':
              //         switch (name) {
              //           case 'name':
              //             break;
              //         }
              //         break;
              //       case 'student':
              //         break;
              //       case 'teacher':
              //         break;
              //       case 'admin':
              //         break;
              //     }
              //     break;
              // }
              if (purpose == 'login') {
                if (name == 'email')
                  requestModel!.email = input;
                else
                  requestModel!.password = input;
              } else {
                if (type == 'student') {
                  if (name == 'name')
                    studentModel!.name = input!;
                  else if (name == 'second name')
                    studentModel!.secondName = input.toString();
                  else if (name == 'father name')
                    studentModel!.fatherName = input!;
                  else if (name == 'phone number')
                    studentModel!.phoneNumber = input as int;
                  else
                    studentModel!.address = input!;
                } else if (name == 'teacher') {
                  if (name == 'name')
                    teacherModel!.name = input!;
                  else if (name == 'second name')
                    teacherModel!.secondName = input.toString();
                  else if (name == 'subject')
                    teacherModel!.subject = input!;
                  else if (name == 'phone number')
                    teacherModel!.phoneNumber = input as int;
                  else if (name == 'address')
                    teacherModel!.address = input!;
                  else if (name == 'experinces')
                    teacherModel!.experinces = input!;
                }
              }
            },
            //obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  icon,
                  color: Color(0xff5ac18e),
                ),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
