import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';

class LeftMenuItem extends StatelessWidget {
  final VoidCallback? onPressed;
  final hover;
  final title;

  LeftMenuItem({required this.onPressed,this.hover=false, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      //padding: EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: hover ? DarkColors.main3 : DarkColors.main1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                //side: BorderSide(color: Colors.red)
              )),
          onPressed: onPressed,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              const Icon(
                Icons.account_balance,
                size: 20,
                color: DarkColors.textColor1,
              ),
              SizedBox(width: 8),
              Text(title,
              style: TextStyle(
                fontSize: 20
              ),),
            ]),
          )),
    );
  }
}
