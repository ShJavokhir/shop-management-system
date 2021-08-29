import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';
/*
 * Created by IntelliJ IDEA.<br/>
 * User: javokhir<br/>
 * Date: 29/08/21<br/>
 * Time: 13:18<br/>
 */


class SaleInfoItem extends StatelessWidget {
  final String itemName;
  final double? amount;
  final Color color;

  const SaleInfoItem({required this.itemName,  this.amount, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          SizedBox(width: 5,),
          Text(itemName, style: TextStyle(
            color: DarkColors.textColor1,
              fontSize: 18,
              fontFamily: "Poppins",
          ),
          ),
          SizedBox(width: 5,),
          Expanded(child: Text(
            amount.toString(),
            textAlign: TextAlign.right,
            style: TextStyle(
                color: color,
                fontSize: 18,
              fontFamily: "Poppins",
                fontWeight: FontWeight.w800

            ),
          ))
        ],
      ),
    );
  }
}
