import 'package:get/get.dart';

class AddItemPageController extends GetxController {

  var qrCode = RxInt(0);
  var name = RxString('');
  var price = RxDouble(0);
  var quantity = RxInt(0);
  var shopName = RxString('');
  var moreInfo = RxString('');

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

  @override
  String toString(){
    return '$qrCode $name $price $quantity $shopName $moreInfo';
  }
}
