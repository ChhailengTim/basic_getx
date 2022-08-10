import 'package:basic_getx/7_pch_api/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PCHScreen extends StatefulWidget {
  const PCHScreen({Key? key}) : super(key: key);

  @override
  State<PCHScreen> createState() => _PCHScreenState();
}

class _PCHScreenState extends State<PCHScreen> {
  final ProductController productController = Get.put(ProductController());
  @override
  void initState() {
    productController.getListProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PCH API'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return const Card(
              child: ListTile(
                title: Text('Fetching data'),
              ),
            );
          },
        ),
      ),
    );
  }
}
