import 'package:basic_getx/7_pch_api/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarModel extends StatelessWidget {
  AppBarModel({
    Key? key,
  }) : super(key: key);

  final _controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
                IconButton(
                  onPressed: () {
                    _controller.editName('PPPP');
                  },
                  icon: const Icon(Icons.favorite),
                ),
              ],
            ),
            GetX<ProductController>(
              init: ProductController(),
              initState: (_) {},
              builder: (controller) {
                return Text(
                  controller.name.value,
                  style: const TextStyle(color: Colors.black),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
