import 'package:get/get.dart';
import 'package:shop_management_system/app/widgets/sold_item.dart';

class RightPanelController extends GetxController {
  //TODO: Implement RightPanelController
  final List<SoldItem> soldItems = [
    SoldItem(title: 'Notebook Asus 4/15',price: 15000000),
    SoldItem(title: 'Zapravka',price: 10000),
    SoldItem(title: 'Toner 1005',price: 9000),
    SoldItem(title: 'Kartridge',price: 120000),
    SoldItem(title: 'Macbook pro m1',price: 15000000),
    SoldItem(title: 'Notebook Asus 2/128',price: 15000000),

  ].obs;
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
