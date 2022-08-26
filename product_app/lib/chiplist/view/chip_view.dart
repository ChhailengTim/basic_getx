import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/chiplist/controller/chip_controller.dart';
import 'package:product_app/chiplist/view/widget/chip_card.dart';

import 'package:product_app/chiplist/view/widget/chip_list.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderController = Get.put(OrderController());

    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      appBar: AppBar(
        title: const Text('Chip List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ChipList(
              onPressed: () {},
            ),
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return OrderListCard(
                      typeStatus: index.isEven
                          ? '${orderController.listOrder[index].status}'
                          : '${orderController.listOrder[index].status}',
                      title: orderController.listOrder[index].title,
                      price: orderController.listOrder[index].price,
                      date: orderController.listOrder[index].date,
                      status: orderController.listOrder[index].status,
                      code: orderController.listOrder[index].code,
                      locate: orderController.listOrder[index].locate,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 12,
                    );
                  },
                  itemCount: orderController.listOrder.length),
            ),
          ],
        ),
      ),
    );
  }
}
