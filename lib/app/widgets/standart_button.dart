import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';
class StandartButton extends StatelessWidget {
  void Function() ?onPressed;
  String title;
  Color color;
  StandartButton({required this.title, required this.color, this.onPressed}) : super();

  @override
  Widget buigld(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          primary: color,

          textStyle: TextStyle(
            color: DarkColors.main2,
            fontSize: 30,
            fontFamily: "Poppins",
          ),
          elevation: 10,
          shadowColor: Colors.black,
        ),

        onPressed: onPressed,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(
              color: DarkColors.main2,
              fontSize: 35,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),


    );
  }
}
