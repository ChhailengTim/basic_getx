import 'package:api_fetch/brand/controller/brand_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BrandController brandController = Get.put(BrandController());
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            brandController.getBrandData();
          },
          child:  const Text('GetData'),
        ),
      ),
    );
  }
}
