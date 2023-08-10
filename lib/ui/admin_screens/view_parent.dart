import 'package:flutter/material.dart';
import 'package:project_one/ui/admin+owner_screens/Teacher_Register.dart';
import 'package:project_one/ui/admin_screens/teachers_list.dart';

import '../admin+owner_screens/parent_register.dart';

class ViewParent extends StatelessWidget{
  const ViewParent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context){return[
              PopupMenuItem<int>(value: 0, child: Text('Delet')),

            ];},
            onSelected: (value){

            },

          )
        ],
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Stack(children: [
          TeacherList(),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(

                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ParentRegister()),
                  );

                },
                child: Icon(Icons.add)
            ),
          )
        ]),
        // child: ListView(
        //   children: [
        //     ListTile1(
        //       lead: 'teacher1',
        //     ),
        //     ListTile1(
        //       lead: 'teacher2',
        //     ),
        //     ListTile1(
        //       lead: 'teacher2',
        //     ),
        //   ],
        //
        // ),
      ),
    );
  }
}


