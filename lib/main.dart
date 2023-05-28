// ignore_for_file: prefer_const_constructors

//import 'package:apitesting/auth/testing.dart';
//import 'package:apitesting/newfetch.dart';
//import 'package:apitesting/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:project_one/providers/student_provider.dart';
import 'package:project_one/ui/admin_screens/main_screen.dart';
import 'package:provider/provider.dart';

import 'package:project_one/home_page.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:project_one/ui/testing_login_page.dart';

Widget _defaultHome = LoginPage();
main() async {
//put async
  WidgetsFlutterBinding.ensureInitialized();
  bool isLoggedIn = await SharedService.isLoggedIn();
  if (isLoggedIn) {
    _defaultHome = HomePage();
  }
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SecondPostProvider>(
          create: (_) => SecondPostProvider(),
        )
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
        primarySwatch: Colors.blue,
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
      home: _defaultHome,
      routes: <String, WidgetBuilder>{
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
