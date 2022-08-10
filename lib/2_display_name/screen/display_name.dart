import 'package:basic_getx/2_display_name/controller/name_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayName extends StatelessWidget {
  const DisplayName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NameController nameController = Get.put(NameController());
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text('${nameController.name}',
              style: Theme.of(context).textTheme.titleLarge),
        ),
      ),
    );
  }
}
