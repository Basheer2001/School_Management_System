import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        backgroundColor: Colors.white,
    ),
    body: Container(
      child: Center(
        child: ListView(
          children: [
            CircleAvatar(
                child: Image.asset('images/profile.png'),

              radius: 80.0,
            ),
            Container(
              color: Colors.amber,
              child: Text('data',style: TextStyle(
                backgroundColor: Colors.lightBlueAccent
              ),),
            ),
            Text('data'),
            Text('data'),
            Text('data'),
            Container(
                child: Text('data'),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    )
    );
    }
}