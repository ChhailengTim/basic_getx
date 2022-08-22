import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/json_data/controller/json_controller.dart';
import 'package:product_app/json_data/repository/json_repo.dart';

class WelcomJsonScreen extends StatelessWidget {
  const WelcomJsonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final JsonController jsonController = Get.put(JsonController());
    final JsonRepository jsonRepository = Get.put(JsonRepository());
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  jsonController.getCountryAll();
                },
                child: const Text("get")),
            Text("${jsonController.listCountry.length}")
          ],
        ));
  }
}
