import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/add/add_controller.dart';

class Add extends GetView<AddController> {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("${controller.counter.value}")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("Increase"),
              onPressed: () {
                controller.addValue();
              },
            ),
          ],
        ),
      ),
    );
  }
}
