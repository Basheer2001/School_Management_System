import 'package:flutter/material.dart';

import '../../widgets/list_tile.dart';
class TeacherList extends StatefulWidget {


  @override
  State<TeacherList> createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile1(trail:true, lead: 'Teacher11',),
        ListTile1(trail:true, lead: 'Teacher22',),
        ListTile1(trail:true, lead: 'Teacher33',),
      ],

    );
  }
}