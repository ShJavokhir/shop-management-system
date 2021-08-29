import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shop_management_system/app/data/themes/dark_colors.dart';
import 'package:shop_management_system/app/modules/right_panel/views/right_panel_view.dart';
import 'package:shop_management_system/app/widgets/circle_button_with_icon.dart';
import 'package:shop_management_system/app/widgets/left_menu.dart';
import 'package:shop_management_system/app/widgets/sale_info_item.dart';
import 'package:shop_management_system/app/widgets/top_bar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<Widget> actionButtons = [
    Expanded(
      child: CircleButtonWithIcon(title: "SOTISH", icon: Icons.production_quantity_limits_sharp, onPressed: (){
        
      },),
    ),
    SizedBox(width: 30),
    Expanded(
      child: CircleButtonWithIcon(title: "QARZDORLIK\nQO'SHISH", icon: Icons.access_alarm, onPressed: (){
        
      },),
    ),
    SizedBox(width: 30),
    Expanded(
      child: CircleButtonWithIcon(title: "MAHSULOT\nQO'SHISH", icon: Icons.thumb_up, onPressed: (){
        
      },),
    ),
  ];



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
              child: _getHomeView(),
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
      )
    );
  }
  Widget _getHomeView(){
    return Container(
      decoration: BoxDecoration(
        color: DarkColors.main2,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 4,child: _getSalesInfoWidget()),
          Expanded(flex: 4,child: _getActionButtons()),

        ],
      ),
    );
  }

  Widget _getSalesInfoWidget(){
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: DarkColors.main1,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 6.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 7, child: _getSalesInfoLeft()),
          Expanded(flex: 4, child: _getProfitCardRight())
        ],
      ),
    );
  }

  Widget _getActionButtons(){
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 40 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...actionButtons
        ],
      ),
    );
  }

  final List<Widget> saleInfoItems = [

  ];

  Widget _getSalesInfoLeft(){
    HomeController controller = Get.put(HomeController());
    return Container(
      child: Obx((){
        return Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SaleInfoItem(itemName: "Skladdagi tovarlar qiymati:", amount: controller.salesInfo.value.priceValueOfAllProductsInWarehouse, color: Colors.lightGreenAccent),
            SizedBox(height: 15,),
            SaleInfoItem(itemName: "Olinishi mumkin bo'lgan foyda:", amount: controller.salesInfo.value.profitThatCanBeGetFromWarehouse, color: Colors.lightBlue),
            SizedBox(height: 15,),
            SaleInfoItem(itemName: "Umumiy tovarlar soni:", amount: controller.salesInfo.value.numberOfProductsInWarehouse, color: Colors.yellowAccent),
            SizedBox(height: 15,),
            SaleInfoItem(itemName: "Umumiy mijozlar soni:", amount: controller.salesInfo.value.numberOfCustomer, color: Colors.orange),
            SizedBox(height: 15,),
            SaleInfoItem(itemName: "Oxirgi 30 kunlik foyda:", amount: controller.salesInfo.value.last30DayProfit, color: Colors.tealAccent),
            SizedBox(height: 15,),
            SaleInfoItem(itemName: "Umumiy qarzdorliklar:", amount: controller.salesInfo.value.customersDebt, color: Colors.redAccent),
          ],
        );
      }
      ),
    );
  }
  Widget _getProfitCardRight(){
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
            color: Colors.black26,
            offset: Offset(0.5, 10.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: DarkColors.main1,
        borderRadius: BorderRadius.circular(40)
      ),
    alignment: Alignment.center,
      margin: EdgeInsets.all(35),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 5,),
          Icon(Icons.arrow_circle_up_outlined, color: DarkColors.green1, size: 60,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sotuvlar",textAlign: TextAlign.center, style: TextStyle(
                  color: DarkColors.textColor1,
                  fontSize: 30,
                  fontFamily: "Poppins",
                ),),
                Text("oxirgi 30 kunga nisbatan",textAlign: TextAlign.center, style: TextStyle(
                  color: DarkColors.textColor1.withOpacity(0.5),
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 20,),
                Text("125000000",textAlign: TextAlign.center, style: TextStyle(
                  color: DarkColors.green1,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
