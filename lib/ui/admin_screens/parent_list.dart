import 'package:flutter/material.dart';

import '../../widgets/list_tile.dart';
class ParentList extends StatefulWidget {


  @override
  State<ParentList> createState() => _ParentListState();
}

class _ParentListState extends State<ParentList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile1(trail:true, lead: 'Parent11',),
        ListTile1(trail:true, lead: 'Parent11',),
        ListTile1(trail:true, lead: 'Parent11',),
      ],

    );
  }
}