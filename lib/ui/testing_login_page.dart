// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/api/login.dart';

import 'package:project_one/models/login_model.dart';
import 'package:project_one/providers/admin_provider.dart';
import 'package:project_one/services/progress_hud.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:project_one/ui/Parents/main.dart';
import 'package:project_one/ui/admin_screens/main_screen.dart';
import 'package:project_one/ui/owner_screns/main_screen.dart';
import 'package:project_one/ui/teachers/main_teacher.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

Widget buildEmail(LoginModel requestModel) {
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
                Icons.email,
                color: Color(0xff5ac18e),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black38)),
          validator: (value) =>
              !value!.contains('@') ? 'Email should contain @' : null,
        ),
      )
    ],
  );
}

Widget buildPassword(LoginModel requestmodel) {
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
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          validator: (value) => value!.length < 4
              ? 'Password should be 4 or more charachtars'
              : null,
          onSaved: (input) => requestmodel.password = input,
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff5ac18e),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}

Widget buildHaveAccount() {
  return GestureDetector(
    onTap: () => print("create account"),
    child: RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Don\'t have an Account?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      TextSpan(
          text: 'Create Account',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))
    ])),
  );
}

class _LoginPageState extends State<LoginPage> {
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

  LoginModel? requestModel;
  @override
  void initState() {
    super.initState();
    requestModel = LoginModel();
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
    final provider = Provider.of<AdminProivder>(context);
    return Scaffold(
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
                    Color(0x665ac18e),
                    Color(0x995ac18e),
                    Color(0xcc5ac18e),
                    Color(0xff5ac18e),
                  ],
                ),
              ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 120,
                ),
                child: Form(
                  key: globalFormKey,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      buildEmail(requestModel!),
                      SizedBox(height: 20),
                      buildPassword(requestModel!),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (validateAndSave()) {
                              setState(() {
                                isApiCallProcess = true;
                              });
                              LoginApi loginApi = LoginApi();
                              loginApi.login(requestModel!).then((value) {
                                setState(() {
                                  isApiCallProcess = false;
                                });
                                if (value.token!.isNotEmpty) {
                                  print(value.token);
                                  final snackBar = SnackBar(
                                      content: Text('Login Successful'));
                                  //  print(value.token);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  SharedService.setLoginDetails(value);
                                  SharedService.saveToken(value);
                                  SharedService.saveRole(value);

                                  if (value.role == 'owner') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OwnerMainScreen()),
                                    );
                                  } else if (value.role == 'admin') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AdminMainScreen()),
                                    );
                                  } else if (value.role == 'teacher') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherScreen()),
                                    );
                                  } else if (value.role == 'parent') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ParentScreen()),
                                    );
                                  }
                                } else {
                                  final snackBar =
                                      SnackBar(content: Text('faild to login'));
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
                            'Log in',
                            style: TextStyle(
                                color: Color(0xff5ac18e),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      buildHaveAccount()
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
