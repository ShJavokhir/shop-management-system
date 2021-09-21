import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  Color color;
  CustomDivider({required this.color}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 7,

      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50)
      ),

    );
  }
}
