import 'package:get/get.dart';

import 'package:shop_management_system/app/modules/right_panel//bindings/right_panel_binding.dart';
import 'package:shop_management_system/app/modules/right_panel//views/right_panel_view.dart';
import 'package:shop_management_system/app/modules/home/bindings/home_binding.dart';
import 'package:shop_management_system/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.RIGHT_PANEL,
      page: () => RightPanelView(),
      binding: RightPanelBinding(),
    ),
  ];
}
