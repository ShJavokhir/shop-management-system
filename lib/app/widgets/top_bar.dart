import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';

class TopBar extends AppBar {
   TopBar():super(
     elevation: 0,
     backgroundColor: DarkColors.main1,
     centerTitle: true,
     title: Text("Asus Computer Shop"),
   );
}
