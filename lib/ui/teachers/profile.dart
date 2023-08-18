import 'package:flutter/material.dart';

class TeacherProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: ListView(
              children: [
                CircleAvatar(
                  child: Image.asset('images/parentprofile.png'),
                  radius: 80.0,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Name :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Birthdate :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '12/11/2000',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'class :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Name :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Birthdate :',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'data',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
