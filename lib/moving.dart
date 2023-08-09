import 'package:flutter/material.dart';
import 'package:project_one/ui/Parents/main.dart';
import 'package:project_one/ui/admin_screens/main_screen.dart';
import 'package:project_one/ui/student_screens/main_screen.dart';
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
                onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentScreen()),
              );
            },
                child: Text('student profile'))  ,
            ElevatedButton(
                onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParentScreen()),
              );
            },
                child: Text('parent')) ,
            ElevatedButton(
                onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminMainScreen()),
              );
            },
                child: Text('Admin'))     ,
            ElevatedButton(
                onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentScreen()),
              );
            },
                child: Text('student ')),
          ],
        ),
      ),
    );
  }
}
