import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';
import 'package:shop_management_system/app/widgets/sold_item.dart';

import '../controllers/right_panel_controller.dart';

class RightPanelView extends GetView<RightPanelController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: DarkColors.main1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: _getRecentSalesWidget(),flex: 6,),
            Expanded(child: Text("a"), flex: 4,),
          ],
        ));
  }

  Widget _getRecentSalesWidget() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: DarkColors.main2,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Text("So'ngi sotuvlar", textAlign: TextAlign.center, style: TextStyle(
              fontSize: 20,
            color: DarkColors.textColor1
          ),),
          ...RightPanelController().soldItems,

        ],
      ),
    );
  }
}
