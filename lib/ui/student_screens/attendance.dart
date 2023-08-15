import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendence'),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        'January',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        'Febuary',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        'March',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: ListTile(
                  leading: Text(
                    '12',
                  ),
                  trailing: Icon(
                    Icons.indeterminate_check_box_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
