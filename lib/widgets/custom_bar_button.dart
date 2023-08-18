// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTabButton extends StatelessWidget {
  final String text;
  final String textTwo;
  final bool isSelected;
  final VoidCallback onTap;

  CustomTabButton({
    required this.text,
    required this.textTwo,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange[700] : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xff8e7daf),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              textTwo,
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xff8e7daf),
                fontWeight: FontWeight.bold,
              ),
            ),
            // Container(
            //   width: 4,
            //   height: 4,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: isSelected ? Colors.white : Color(0xff8e7daf),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
