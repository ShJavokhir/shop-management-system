import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_management_system/app/data/themes/models/general_sales_info.dart';
import 'package:shop_management_system/app/widgets/sale_info_item.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final salesInfo = GeneralSalesInfo(
          customersDebt: 0,
          last30DayProfit: 0,
          numberOfCustomer: 0,
          numberOfProductsInWarehouse: 0,
          priceValueOfAllProductsInWarehouse: 0,
          profitThatCanBeGetFromWarehouse: 0)
      .obs;



  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
