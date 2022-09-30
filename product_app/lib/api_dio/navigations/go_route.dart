import 'package:get/get.dart';

void routeToNamed(
    {required String routeName,
    dynamic arguments,
    Map<String, String>? parameters}) async {
  await Get.toNamed(routeName, arguments: arguments, parameters: parameters);
}

void routeBack() {
  Get.back();
}

void routeTo(dynamic page) {
  Get.to(page);
}

void routeOffAllNamed({required String routeName}) async {
  await Get.offAllNamed(routeName);
}

void routeOffAll() async {
  // await Get.offAll();
}
