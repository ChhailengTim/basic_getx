import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/getx_counter/controller/get_controller.dart';

class GetxView extends StatelessWidget {
  GetxView({Key? key}) : super(key: key);
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'clicks: ${controller.count}',
                )),
            ElevatedButton(
              onPressed: () {
                controller.up();
              },
              child: const Text('up+++'),
            ),
          ],
        ),
      ),
    );
  }
}
