import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/switch_map/controller/switch_map_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.i}) : super(key: key);
  final int i;
  @override
  Widget build(BuildContext context) {
    final switchMMController = Get.put(SwitchMMController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          switchMMController.widgetCard[i]['name'],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
