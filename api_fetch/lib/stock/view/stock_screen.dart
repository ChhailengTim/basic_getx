import 'package:api_fetch/stock/controller/stock_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StockController stockController = Get.put(StockController());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemCount: stockController.data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('${stockController.data[index].productName}'),
                  leading: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                        "${stockController.data[index].imageThumbnail}"),
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
