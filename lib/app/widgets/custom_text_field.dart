import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';

class CustomTextField extends StatelessWidget {

  final labelText;
  void Function(String) onChanged;
  CustomTextField({required this.labelText, required this.onChanged}) : super();

  @override
  Widget build(BuildContext context) {
    return TextField(

      style: TextStyle(
        color: DarkColors.textColor1

      ),

      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: DarkColors.textColor1
        ),
        fillColor: DarkColors.textColor1,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: DarkColors.textColor1, width: 0.0,),
          borderRadius: BorderRadius.circular(20.0),


        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: DarkColors.textColor1, width: 0.0,),
          borderRadius: BorderRadius.circular(20.0),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: DarkColors.textColor1, width: 2,),
          borderRadius: BorderRadius.circular(20.0),
        ),

        labelText: labelText,
      ),

      onChanged: this.onChanged,
    );
  }
}
