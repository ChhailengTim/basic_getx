import 'package:api_fetch/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemCount: productController.data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('${productController.data[index].productName}'),
                  leading: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                        "${productController.data[index].imageThumbnail}"),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
