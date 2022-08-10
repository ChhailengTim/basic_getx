import 'package:basic_getx/6_reget_pizza_api/controller/pizza_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RePizzaScreen extends StatefulWidget {
  const RePizzaScreen({super.key});

  @override
  State<RePizzaScreen> createState() => _RePizzaScreenState();
}

class _RePizzaScreenState extends State<RePizzaScreen> {
  final ThePizzaController thePizzaController = Get.put(ThePizzaController());
  @override
  void initState() {
    thePizzaController.getThePizza();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetch Pizza API"),
      ),
      body: Obx(() => GridView.builder(
          itemCount: thePizzaController.listthePizza.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                      "${thePizzaController.listthePizza[index].image}"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${thePizzaController.listthePizza[index].id}'),
                  Text('${thePizzaController.listthePizza[index].name}'),
                ],
              ),
            );
          })),
    );
  }
}
