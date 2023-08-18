import 'package:flutter/material.dart';
import 'package:project_one/ui/featuredScreen.dart';

class AdminMainScreen extends StatefulWidget {
  AdminMainScreen({super.key});

  @override
  State<AdminMainScreen> createState() => _AdminMainScreenState();
}

class _AdminMainScreenState extends State<AdminMainScreen> {
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
    );
  }
}
