// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/ui/admin_screens/select_year_for_students_administration.dart';
import 'package:project_one/ui/admin_screens/view_sections.dart';

class SchoolAdministraion extends StatefulWidget {
  const SchoolAdministraion({super.key});

  @override
  State<SchoolAdministraion> createState() => _SchoolAdministraionState();
}

class _SchoolAdministraionState extends State<SchoolAdministraion> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        child: Scaffold(
          body: Column(
            children: [
              appBar(context),
              body(context),
            ],
          ),
        ),
        value: SystemUiOverlayStyle.light);
  }
}

Widget appBar(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 30, left: 10, right: 20),
    height: 180,
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
            IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Class Administiration',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
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
              MaterialPageRoute(
                builder: (context) => SelectYearForStudentsAdministration(),
              ),
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
                    'images/students.avif',
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
              MaterialPageRoute(builder: (context) => SchoolAdministraion()),
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
                    'images/school2.avif',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'School Administraion',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
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
                    'images/adding.png',
                    height: 120,
                  ),
                ),
                Text(
                  'Adding Section',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
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
                    'images/adding.png',
                    height: 120,
                  ),
                ),
                Text(
                  'Adding Section',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
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
                    'images/adding.png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Adding Section',
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
