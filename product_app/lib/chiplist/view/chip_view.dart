import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/chiplist/controller/chip_controller.dart';
import 'package:product_app/chiplist/view/widget/chip_card.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  @override
  Widget build(BuildContext context) {
    final orderController = Get.put(OrderController());
    final List<String> chipList = [
      'All',
      'Pending',
      'Approved',
      'Rejected',
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      appBar: AppBar(
        title: const Text('Chip List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: chipList
                    .asMap()
                    .entries
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: ActionChip(
                          label: Text(
                            e.value,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            e.value.toLowerCase();
                          },
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final listPro = orderController.listOrder[index];
                    return OrderListCard(
                      typeStatus: index.isEven
                          ? '${listPro.status}'
                          : '${listPro.status}',
                      title: listPro.title,
                      price: listPro.price,
                      date: listPro.date,
                      status: listPro.status,
                      code: listPro.code,
                      locate: listPro.locate,
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
