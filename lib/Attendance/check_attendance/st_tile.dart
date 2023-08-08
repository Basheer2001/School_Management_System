import 'package:flutter/material.dart';

class StudentsTile extends StatefulWidget {
   StudentsTile( {this.trail});
   bool?trail;


  @override
  State<StudentsTile> createState() => _StudentsTileState(
    w:trail
  );
}

class _StudentsTileState extends State<StudentsTile> {
  _StudentsTileState ( {this.w});

   bool? w ;

  bool isChecked = false;
  void checkboxCallback(bool? checkboxState){
    setState(() {
      isChecked = checkboxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('student1',
        //style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),
      ),
      trailing: w==true ?Taskcheckbox(isChecked,checkboxCallback):null,
    );
  }
}

class Taskcheckbox extends StatelessWidget {
  final bool? checkBoxState;
  final Function togglecheckboxState ;
  Taskcheckbox(this.checkBoxState, this.togglecheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: togglecheckboxState as void Function (bool?),
    );
  }
}
