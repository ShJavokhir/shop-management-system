import 'package:get/get.dart';

import '../controllers/right_panel_controller.dart';

class RightPanelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RightPanelController>(
      () => RightPanelController(),
    );
  }
}
