import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';
import 'package:shop_management_system/app/modules/right_panel/views/right_panel_view.dart';
import 'package:shop_management_system/app/widgets/custom_text_field.dart';
import 'package:shop_management_system/app/widgets/divider.dart';
import 'package:shop_management_system/app/widgets/left_menu.dart';
import 'package:shop_management_system/app/widgets/standart_button.dart';
import 'package:shop_management_system/app/widgets/top_bar.dart';

import '../controllers/add_item_page_controller.dart';

class AddItemPageView extends GetView<AddItemPageController> {
  static const PAGE_NAME = "Yangi mahsulot qo'shish";
  static const TIP =
      "*Maydonlarni avtomatik to'ldirish uchun shtrix kodni skanerlang";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(),
        body: Container(
          color: DarkColors.main1,
          height: double.infinity,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: 10),
              Expanded(
                child: LeftMenu(),
                flex: 2,
              ),
              SizedBox(width: 10),
              Expanded(
                child: _getAddItemView(),
                flex: 7,
              ),
              SizedBox(width: 10),
              Expanded(
                child: RightPanelView(),
                flex: 2,
              ),
              SizedBox(width: 10),
            ],
          ),
        ));
  }

  Widget _getAddItemView() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      decoration: BoxDecoration(
        color: DarkColors.main2,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              PAGE_NAME,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: DarkColors.textColor1,
                  fontSize: 30,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              TIP,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: DarkColors.green1,
                fontSize: 20,
                fontFamily: "Poppins",
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  labelText: "Mahsulot nomi",
                  onChanged: (_) {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Expanded(
              child: CustomTextField(
                labelText: "Soni",
                onChanged: (_) {},
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomTextField(
                labelText: "Narxi",
                onChanged: (_) {},
              ),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          CustomDivider(color: Colors.grey),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Column(children: [
                CustomTextField(
                  labelText: "Shtrix kod",
                  onChanged: (_) {},
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: "Do'kon nomi",
                  onChanged: (_) {},
                ),
              ],)),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Column(children: [
                Container(

                  child: CustomTextField(
                    labelText: "Qo'shimcha ma'lumot",
                    onChanged: (_) {},
                  ),
                ),
              ],))
            ],
          ),
        SizedBox(height: 40,),
          Row(
            children: [
              Expanded(child: StandartButton(title: "Tozalash", color: DarkColors.red1, onPressed: (){},)),
              SizedBox(width: 20),
              Expanded(child: StandartButton(title: "Qo'shish", color: DarkColors.green1, onPressed: (){},)),
            ],
          )
        ],
        
      ),
    );
  }
}
