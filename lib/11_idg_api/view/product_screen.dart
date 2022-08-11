import 'package:basic_getx/11_idg_api/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    return Scaffold(
      body: ListView.builder(
          itemCount: productController.data.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                title: Text('${productController.data[index].productName}'),
                leading: Image.network(
                    '${productController.data[index].imageThumbnail}'),
              ),
            );
          })),
    );
  }
}
