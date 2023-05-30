// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_one/api/admin_api.dart';
import 'package:project_one/providers/admin_provider.dart';
import 'package:provider/provider.dart';

class ViewAdmins extends StatelessWidget {
  ViewAdmins({super.key});
  AdminApi adminApi = AdminApi();
  var myAdminList = [];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AdminProivder>(context);
    if (provider.state == ListScreenState.inital) {
      provider.getAdmins();
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      myAdminList = provider.adminList;
    }
    return Scaffold(
      // check for scroll by removing container
      body: Container(
        color: Colors.green[200],
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {},
              title: Text('title'),
              subtitle: Text('sub title'),
              leading: Icon(
                Icons.account_circle_rounded,
                size: 30,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            );
          },
        ),
      ),
    );
  }
}
