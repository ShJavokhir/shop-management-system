import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';

class SoldItem extends StatelessWidget {
  final String title;
  final double price;
  const SoldItem({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: DarkColors.main1,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.monetization_on, color: Colors.yellowAccent,size: 30,),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(
                  fontSize: 12,
                    color: DarkColors.textColor1
                ),),
                Text('+${price.toString()} SUM',style: TextStyle(
                    fontSize: 12,
                    color: DarkColors.green1
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
