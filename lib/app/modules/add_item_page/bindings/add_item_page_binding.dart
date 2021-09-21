import 'package:get/get.dart';

import '../controllers/add_item_page_controller.dart';

class AddItemPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddItemPageController>(
      () => AddItemPageController(),
    );
  }
}
