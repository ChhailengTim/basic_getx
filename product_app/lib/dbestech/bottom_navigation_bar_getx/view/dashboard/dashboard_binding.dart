import 'package:get/get.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/add/add_controller.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/dashboard/dashboard_controller.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/home/home_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AddController>(() => AddController());
  }
}
