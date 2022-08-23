import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/superapp/controller/superapp_controller.dart';

class SuperAppScreen extends StatelessWidget {
  const SuperAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SuperAppController superAppController = Get.put(SuperAppController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => ListView.builder(
          itemCount: superAppController.listSuperapp.length,
          itemBuilder: (context, index) {
            return Text('${superAppController.listSuperapp[index].id}');
          })),
    );
  }
}
