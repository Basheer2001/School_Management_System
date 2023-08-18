// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_one/constants/color.dart';
import 'package:project_one/main.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:project_one/ui/admin_screens/parent%20_adminstration.dart';
import 'package:project_one/ui/admin_screens/select_year_for_students_administration.dart';
import 'package:project_one/ui/admin_screens/student_admenstration0.dart';
import 'package:project_one/ui/admin_screens/teachers_adminstration.dart';
import 'package:flutter/services.dart';
import 'package:project_one/ui/testing_login_page.dart';

class OwnerMainScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  OwnerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'abd',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                accountEmail: Text(
                  '',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                title: Text(
                  'Log Out',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                leading: Icon(
                  Icons.exit_to_app_outlined,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                  SharedService.logout();
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            appBar(context, scaffoldKey),
            body(context),
          ],
        ),
      ),
    );
  }
}

@override
Widget appBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return Container(
    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      gradient: LinearGradient(
        colors: [
          Color(0xff886ff2),
          Color(0xff6849ef),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Owner Mode',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryLight,
              ),
              child: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
            ),
          ],
        )
      ],
    ),
  );
}

Widget body(BuildContext context) {
  return Expanded(
    child: GridView.count(
      shrinkWrap: true,
      //itemCount: categoryList.length,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      childAspectRatio: 0.8,
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 24,
      children: [
        GestureDetector(
          onTap: () {
            print('second token: $token');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StudentAdminstration0()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4.0,
                    spreadRadius: 0.05),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/students.jpg',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Students Administration',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TeachersAdminstration()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4.0,
                    spreadRadius: 0.05),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/teachers.png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Teachers Administration',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParentAdminstration()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4.0,
                    spreadRadius: 0.05),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/parent.png',
                    height: 120,
                  ),
                ),
                Text(
                  'Parents Administration',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4.0,
                    spreadRadius: 0.05),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/admin.jpg',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Admins Administration',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SelectYearForStudentsAdministration()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4.0,
                    spreadRadius: 0.05),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/undraw_Building_re_xfcm (2).png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Classes Administration',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
