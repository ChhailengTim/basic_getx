import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/json_data/controller/json_controller.dart';

class WelcomJsonScreen extends StatelessWidget {
  const WelcomJsonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final JsonController jsonController = Get.put(JsonController());
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  jsonController.getJson();
                },
                child: const Text('dafd')),
            //Text()
          ],
        ));
  }
}
