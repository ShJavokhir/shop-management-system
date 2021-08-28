import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';
import 'package:shop_management_system/app/widgets/left_menu.dart';
import 'package:shop_management_system/app/widgets/top_bar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
              child: Container(
                color: Colors.blue,
              ),
              flex: 6,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
              flex: 2,
            ),
            SizedBox(width: 10),

          ],
        ),
      )
    );
  }
}
