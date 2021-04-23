import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;

  CustomTextButton({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFFE5E5E5).withOpacity(0.35),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: "Caros"),
        ),
      ),
    );
  }
}
