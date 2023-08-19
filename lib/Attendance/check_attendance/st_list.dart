import 'package:flutter/material.dart';
import 'package:project_one/widgets/list_tile.dart';


class StudentsList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
      ),
      body: Stack(
        children: [

          ListView(
            children: [
              ListTile1(trail:true, lead: 'st1',),
              ListTile1(trail:true, lead: 'st2',),
              ListTile1(trail:true, lead: 'st3',),
            ],

          ),
        Positioned(
          bottom: 20,
          right: 20,
          child: ElevatedButton(
              onPressed: (){

              },
              child: Text('save')),
        )
        ]
      ),
    );
  }
}