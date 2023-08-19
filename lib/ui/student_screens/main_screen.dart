// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/constants/category.dart';
import 'package:project_one/constants/color.dart';
import 'package:project_one/constants/size.dart';
import 'package:project_one/services/shared_prefernces.dart';
import 'package:project_one/ui/admin+owner_screens/add_students.dart';

import 'package:project_one/ui/admin_screens/select_year_for_class_administration.dart';
import 'package:project_one/ui/admin_screens/select_year_for_students_administration.dart';

import 'package:project_one/ui/student_screens/profile.dart';
import 'package:project_one/ui/student_screens/show_grades.dart';
import 'package:project_one/ui/testing_login_page.dart';

import 'attendance.dart';

class StudentScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  StudentScreen({super.key});

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
                  '',
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
                  Navigator.pushReplacement(
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
    padding: EdgeInsets.only(top: 50, left: 19, right: 20),
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
              'Student Mode',
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
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
                    'images/profile.png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'My profile',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Result()),
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
                    'images/grades.png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Grades',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Attendance()),
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
                    'images/attendance.png',
                    height: 120,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Attendance',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
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
                  // child:Icon(Icons.schedule,size: 100,),
                  child: Image.asset(
                    'images/schedule.png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  // child:Icon(Icons.schedule,size: 100,),
                  child: Text(
                    'Schedule',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewEvents()),
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
                    'images/events.png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Events',
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


class ViewEvents extends StatelessWidget {
  ViewEvents({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('View Events'),
          actions: [],
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: ListView(
              children: [

                Card(
                  child: ListTile(
                    onTap: () {

                    },
                    title: Text(
                        'ghjk'
                    ),

                    //subtitle: Text(myteacher.lastName),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    onTap: () {

                    },
                    title: Text(
                        'ghjk'
                    ),

                    //subtitle: Text(myteacher.lastName),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    onTap: () {

                    },
                    title: Text(
                        'ghjk'
                    ),

                    //subtitle: Text(myteacher.lastName),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    onTap: () {

                    },
                    title: Text(
                        'ghjk'
                    ),

                    //subtitle: Text(myteacher.lastName),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ]
          ),
        ));
  }
}

