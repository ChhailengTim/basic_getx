import 'package:get/get.dart';
import 'package:product_app/chiplist/controller/chip_controller.dart';
import 'package:product_app/chiplist/model/chip_model.dart';

final orderControlelr = Get.put(OrderController());

List<OrderModel> filterList(String query) {
  final getStatus = orderControlelr.listOrder.where((getStatus) {
    final showStatus = getStatus.status!.toLowerCase();
    final input = query.toLowerCase();
    return showStatus.contains(input);
  }).toList();
  return getStatus;
}
