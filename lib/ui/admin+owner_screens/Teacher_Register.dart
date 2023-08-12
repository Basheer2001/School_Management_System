// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/api/student_api.dart';
import 'package:project_one/models/login_model.dart';
import 'package:project_one/models/student/student_model.dart';
import 'package:project_one/services/progress_hud.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:project_one/widgets/textformfield.dart';

class TeacherRegister extends StatefulWidget {
  const TeacherRegister({super.key});

  @override
  State<TeacherRegister> createState() => _TeacherRegisterState();
}

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

  LoginModel? loginModel;
  StudentModel? studentModel;
  @override
  void initState() {
    super.initState();
    loginModel = LoginModel();
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
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
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
                          FirstCustomTextFormField(
                            name: 'name',
                            hintText: 'enter name',
                            validationError: 'less than 4 characters',
                            icon: Icons.person,
                            purpose: 'register',
                            studentModel: studentModel,
                          ),
                          FirstCustomTextFormField(
                            name: 'second name',
                            hintText: 'enter second name',
                            validationError: 'less than 4 characters',
                            icon: Icons.person,
                            purpose: 'register',
                            studentModel: studentModel,
                          ),
                          FirstCustomTextFormField(
                            name: 'father name',
                            hintText: 'enter father name',
                            validationError: 'less than 4 charachters',
                            icon: Icons.person,
                            purpose: 'register',
                            studentModel: studentModel,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          FirstCustomTextFormField(
                            name: 'address',
                            hintText: 'enter address',
                            validationError: 'less than 4 characters',
                            icon: Icons.location_on,
                            purpose: 'register',
                            studentModel: studentModel,
                          ),
                          FirstCustomTextFormField(
                            name: 'phone number',
                            hintText: 'enter phone number',
                            validationError: 'less than 4 characters',
                            icon: Icons.phone,
                            purpose: 'register',
                            studentModel: studentModel,
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (validateAndSave()) {
                                  setState(() {
                                    isApiCallProcess = true;
                                  });
                                  StudentApi studentApi = StudentApi();
                                  studentApi.login(loginModel!).then((value) {
                                    setState(() {
                                      isApiCallProcess = false;
                                    });
                                    if (value.token!.isNotEmpty) {
                                      final snackBar = SnackBar(
                                          content: Text('Login Successful'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                      SharedService.setLoginDetails(value);
                                      Navigator.of(context)
                                          .pushReplacementNamed('/home');
                                    } else {
                                      final snackBar =
                                      SnackBar(content: Text(' failed to login'));
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
                                    color: Color(0x995a68c1),
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
