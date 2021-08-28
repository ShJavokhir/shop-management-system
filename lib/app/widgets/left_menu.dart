import 'package:flutter/material.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';
import 'package:shop_management_system/app/widgets/left_menu_item.dart';

final List<LeftMenuItem> menuItems = [
  LeftMenuItem(onPressed: (){

  }, title: 'Asosiy panel', hover: true,),
  LeftMenuItem(onPressed: (){

  }, title: 'Sotish'),
  LeftMenuItem(onPressed: (){

  }, title: "Tovar qo'shish"),
  LeftMenuItem(onPressed: (){

  }, title: 'Statistika'),
  LeftMenuItem(onPressed: (){

  }, title: 'Sozlamalar'),
];

class LeftMenu extends StatelessWidget {
  const LeftMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: DarkColors.main1,
      child: ListView(
          children: [...menuItems],

      ),
    );
  }
}
