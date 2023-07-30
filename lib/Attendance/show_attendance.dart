import 'package:flutter/material.dart';
class StudentsList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
    ListTile(
    leading: Text('bn'),
    trailing:Icon(Icons.check_box) ,
    ),
    ListTile(
    leading: Text('bn'),
    trailing:Icon(Icons.check_box) ,
    ),
    ListTile(
    leading: Text('bn'),
    trailing:Icon(Icons.check_box) ,
    ),
      ],

    );
  }
}