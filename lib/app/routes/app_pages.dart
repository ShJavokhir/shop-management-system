import 'package:get/get.dart';

import 'package:shop_management_system/app/modules/add_item_page/bindings/add_item_page_binding.dart';
import 'package:shop_management_system/app/modules/add_item_page/views/add_item_page_view.dart';
import 'package:shop_management_system/app/modules/home/bindings/home_binding.dart';
import 'package:shop_management_system/app/modules/home/views/home_view.dart';
import 'package:shop_management_system/app/modules/right_panel//bindings/right_panel_binding.dart';
import 'package:shop_management_system/app/modules/right_panel//views/right_panel_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ADD_ITEM_PAGE;

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
    GetPage(
      name: _Paths.ADD_ITEM_PAGE,
      page: () => AddItemPageView(),
      binding: AddItemPageBinding(),
    ),
  ];
}
