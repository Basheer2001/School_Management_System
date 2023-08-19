// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/api/student_api.dart';
import 'package:project_one/api/teacher_api.dart';
import 'package:project_one/constants/color.dart';
import 'package:project_one/models/login_model.dart';
import 'package:project_one/models/student/student_model.dart';
import 'package:project_one/models/teacher/teacher_model.dart';
import 'package:project_one/services/progress_hud.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:project_one/widgets/textformfield.dart';

class TeacherRegister extends StatefulWidget {
  const TeacherRegister({super.key});

  @override
  State<TeacherRegister> createState() => _TeacherRegisterState();
}

Widget buildName(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Name',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.name = input,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'Name',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

Widget buildLastName(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Last Name',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.lastName = input,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'Last Name',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

Widget buildFatherName(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Father Name',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.middleName = input,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'Father Name',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

Widget buildEmail(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.email = input,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

Widget buildAddress(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Address',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.address = input,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'Address',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

Widget buildPassword(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.password = input,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

Widget buildPhoneNumber(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Phone Number',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.phoneNumber = input,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'Phone Number',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

Widget buildNationalId(TeacherModel requestModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'National ID',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          onSaved: (input) => requestModel.nationalId = input,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xcc5d5ac1),
              ),
              hintText: 'National ID',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              value!.length < 3 ? ' should be 3 or more charachtars' : null,
        ),
      )
    ],
  );
}

// Widget buildTestSubject(TeacherModel requestModel) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       const Text(
//         'test subject',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 16,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const SizedBox(height: 10),
//       Container(
//         height: 60,
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),

//             // ignore: prefer_const_literals_to_create_immutables
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
//             ]),
//         child: TextFormField(
//           onSaved: (input) => requestModel.testSubject = input as int,
//           keyboardType: TextInputType.number,
//           style: TextStyle(color: Colors.black87),
//           decoration: InputDecoration(
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 14),
//               prefixIcon: Icon(
//                 Icons.person,
//                 color: Color(0xcc5d5ac1),
//               ),
//               hintText: 'test subject',
//               hintStyle: TextStyle(color: Colors.black38)),
//           validator: (value) =>
//               value!.length < 1 ? ' should be 3 or more charachtars' : null,
//         ),
//       )
//     ],
//   );
// }

class _TeacherRegisterState extends State<TeacherRegister> {
  String year = 'Select year';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool isApiCallProcess = false;
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  TeacherModel? teacherModel;

  @override
  void initState() {
    super.initState();
    teacherModel = TeacherModel();
    //loginModel = LoginModel();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      isAsyncCall: isApiCallProcess,
      opacity: 0.3,
      child: _uiSetup(context),
    );
  }

  Widget _uiSetup(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Teacher Register',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      key: scaffoldKey,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x665a5fc1),
                    Color(0x995a68c1),
                    Color(0xcc5d5ac1),
                    Color(0xff5a63c1),
                  ],
                ),
              ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                child: Form(
                  key: globalFormKey,
                  child: Column(
                    children: <Widget>[
                      buildName(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      buildLastName(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      buildFatherName(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      buildAddress(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      buildEmail(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      buildPassword(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      buildPhoneNumber(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      buildNationalId(teacherModel!),
                      SizedBox(
                        height: 20,
                      ),
                      // buildTestSubject(teacherModel!),

                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (validateAndSave()) {
                              setState(() {
                                isApiCallProcess = true;
                              });
                              TeacherApi teacherApi = TeacherApi();
                              teacherApi
                                  .teacherRegister(teacherModel!)
                                  .then((value) {
                                setState(() {
                                  isApiCallProcess = false;
                                });
                                print(value.status);
                                if (value.keyyy!.isNotEmpty) {
                                  print(value.keyyy);

                                  print(value.status);
                                  final snackBar =
                                      SnackBar(content: Text('add complete'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);

                                  // Navigator.of(context)
                                  //     .pushReplacementNamed('/home');
                                } else {
                                  final snackBar =
                                      SnackBar(content: Text(' add faild'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: Colors.white),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      //buildHaveAccount()
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
