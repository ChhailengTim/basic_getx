import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/add/add_controller.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddController addController = Get.put(AddController());
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "Users Number",
              style: TextStyle(fontSize: 20),
            ),
            Obx(() => Text(
                  '${addController.counter.value}',
                  style: const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
