import 'package:api_fetch/good/controller/good_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoodScreen extends StatelessWidget {
  const GoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GoodController goodController = Get.put(GoodController());
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            goodController.getGood();
          },
          child: const Text('getData'),
        ),
      ),
    );
  }
}
