import 'package:flutter/material.dart';

class ListTile1 extends StatefulWidget {
   ListTile1( {required this.lead,this.trail});
   bool?trail;
   String lead;


  @override
  State<ListTile1> createState() => _ListTile1State(
    t:trail, l: lead
  );
}

class _ListTile1State extends State<ListTile1> {
  _ListTile1State ( {required this.l,this.t});

   bool? t ;
   String l;

  bool isChecked = false;
  void checkboxCallback(bool? checkboxState){
    setState(() {
      isChecked = checkboxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(l
        //style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),
      ),
      trailing: t==true ?Taskcheckbox(isChecked,checkboxCallback):null,
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
