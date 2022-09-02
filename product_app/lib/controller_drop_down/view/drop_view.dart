import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/controller_drop_down/controller/drop_controller.dart';

class CoolDropDownController extends StatelessWidget {
  const CoolDropDownController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dropController = Get.put(DropController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller'),
      ),
      body: Obx(
        () => Column(
          children: [
            CoolDropdown(
              dropdownList: dropController.dropdownItemList,
              onChange: (getFruit) {
                dropController.fruit = getFruit['value'];
              },
              defaultValue: dropController.dropdownItemList[2],
            ),
            Text(dropController.fruit),
          ],
        ),
      ),
    );
  }
}
