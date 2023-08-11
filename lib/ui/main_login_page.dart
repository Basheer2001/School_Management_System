// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:project_one/api/student_api.dart';
// import 'package:project_one/models/login_model.dart';
// import 'package:project_one/services/progress_hud.dart';
// import 'package:project_one/services/shared_prefernces.dart';
// import 'package:project_one/widgets/textformfield.dart';

// class Testing extends StatefulWidget {
//   const Testing({super.key});

//   @override
//   State<Testing> createState() => _TestingState();
// }

// class _TestingState extends State<Testing> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
//   bool isApiCallProcess = false;
//   bool validateAndSave() {
//     final form = globalFormKey.currentState;
//     if (form!.validate()) {
//       form.save();
//       return true;
//     }
//     return false;
//   }

//   LoginModel? loginModel;
//   @override
//   void initState() {
//     super.initState();
//     loginModel = LoginModel();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ProgressHUD(
//       isAsyncCall: isApiCallProcess,
//       opacity: 0.3,
//       child: _uiSetup(context),
//     );
//   }

//   Widget _uiSetup(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light,
//         child: GestureDetector(
//             child: Stack(
//           children: <Widget>[
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Color(0x665ac18e),
//                     Color(0x995ac18e),
//                     Color(0xcc5ac18e),
//                     Color(0xff5ac18e),
//                   ],
//                 ),
//               ),
//               child: SingleChildScrollView(
//                 physics: AlwaysScrollableScrollPhysics(),
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 25,
//                   vertical: 120,
//                 ),
//                 child: Form(
//                   key: globalFormKey,
//                   child: Column(
//                     children: <Widget>[
//                       Text(
//                         'Log In',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       FirstCustomTextFormField(
//                         name: 'email',
//                         hintText: 'enter email',
//                         validationError: 'less than 4 charachters',
//                         icon: Icons.email,
//                         purpose: 'login',
//                         requestModel: loginModel,
//                       ),
//                       FirstCustomTextFormField(
//                         name: 'password',
//                         hintText: 'enter password',
//                         validationError: 'less than 4 charachters',
//                         icon: Icons.lock,
//                         purpose: 'login',
//                         requestModel: loginModel,
//                       ),

//                       Container(
//                         padding: EdgeInsets.symmetric(vertical: 25),
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             if (validateAndSave()) {
//                               setState(() {
//                                 isApiCallProcess = true;
//                               });
//                               StudentApi studentApi = StudentApi();
//                               studentApi.login(loginModel!).then((value) {
//                                 setState(() {
//                                   isApiCallProcess = false;
//                                 });
//                                 if (value.token!.isNotEmpty) {
//                                   final snackBar = SnackBar(
//                                       content: Text('Login Successful'));
//                                   ScaffoldMessenger.of(context)
//                                       .showSnackBar(snackBar);
//                                   SharedService.setLoginDetails(value);
//                                   Navigator.of(context)
//                                       .pushReplacementNamed('/home');
//                                 } else {
//                                   final snackBar =
//                                       SnackBar(content: Text('faild to login'));
//                                   ScaffoldMessenger.of(context)
//                                       .showSnackBar(snackBar);
//                                 }
//                               });
//                             }
//                           },
//                           style: ElevatedButton.styleFrom(
//                               padding: EdgeInsets.all(15),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                               backgroundColor: Colors.white),
//                           child: Text(
//                             'Log in',
//                             style: TextStyle(
//                                 color: Color(0xff5ac18e),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                       //buildHaveAccount()
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
