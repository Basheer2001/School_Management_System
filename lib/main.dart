// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_one/constants/color.dart';

import 'package:project_one/providers/admin_provider.dart';
import 'package:project_one/providers/student_provider.dart';
import 'package:project_one/providers/teacher_provider.dart';
import 'package:project_one/ui/Parents/main.dart';
import 'package:project_one/ui/admin_screens/main_screen.dart';
import 'package:project_one/ui/owner_screns/main_screen.dart';

import 'package:project_one/ui/student_screens/main_screen.dart';
import 'package:project_one/ui/student_screens/week%20program.dart';
import 'package:project_one/ui/superadmin/main_screen.dart';
import 'package:project_one/ui/teachers/main_teacher.dart';

import 'package:provider/provider.dart';

import 'package:project_one/home_page.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:project_one/ui/testing_login_page.dart';

import 'Attendance/check_attendance/st_list.dart';
import 'moving.dart';

String? token;
String? role;

Widget _defaultHome = LoginPage();
main() async {
//put async
  WidgetsFlutterBinding.ensureInitialized();

  bool isLoggedIn = await SharedService.isLoggedIn();
  if (isLoggedIn) {
    // await SharedService.getRole();
    // يلي عليهن تعليقات بدهن تجريب مالي مجربهن

    // if(role=='owner'){
    //     _defaultHome = OwnerMainScreen();
    // }
    //    else if(role=='superadmin'){
    //     _defaultHome = SuperAdminMainScreen();
    // }
    //    else if(role=='admin'){
    //     _defaultHome = AdminMainScreen();
    // }
    //   else  if(role=='teacher'){
    //     _defaultHome = TeacherScreen();
    // }
    //   else  if(role=='parent'){
    //     _defaultHome = ParentScreen();
    // }
    // else{
    //    _defaultHome = StudentScreen();
    // }

    _defaultHome = OwnerMainScreen();
  }
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<StudentProvider>(
          create: (_) => StudentProvider(),
        ),
        ChangeNotifierProvider<AdminProivder>(
          create: (_) => AdminProivder(),
        ),
        ChangeNotifierProvider<TeachersProvider>(
          create: (_) => TeachersProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Management',
      theme: ThemeData(
        primaryColor: kPrimaryColor,

        primarySwatch: Colors.deepPurple,
        //fontFamily:
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          displayMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      home:
          LoginPage(), //StudentRegister(),////ParentScreen(),//StudentScreen(),//AdminMainScreen(), //StudentRegister(),//LoginPage(),

      routes: <String, WidgetBuilder>{
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
