import 'package:flutter/material.dart';
import 'package:project_one/ui/Parents/main.dart';
import 'package:project_one/ui/admin_screens/main_screen.dart';
import 'package:project_one/ui/owner_screns/main_screen.dart';
import 'package:project_one/ui/student_screens/main_screen.dart';
import 'package:project_one/ui/superadmin/main_screen.dart';
import 'package:project_one/ui/teachers/main_teacher.dart';

import 'ui/student_screens/show_grades.dart';
import 'ui/teachers/add_grades.dart';
import 'ui/admin_screens/add_program.dart';

class Move extends StatefulWidget {
  const Move({Key? key}) : super(key: key);

  @override
  State<Move> createState() => _MoveState();
}

class _MoveState extends State<Move> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OwnerMainScreen()),
                  );
                },
                child: Text('Owner')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SuperAdminMainScreen()),
                  );
                },
                child: Text('Super Admin')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminMainScreen()),
                  );
                },
                child: Text('Admin')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TeacherScreen()),
                  );
                },
                child: Text('Teacher')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParentScreen()),
                  );
                },
                child: Text('parent')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentScreen()),
                  );
                },
                child: Text('student ')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                },
                child: Text('results ')),
          ],
        ),
      ),
    );
  }
}
