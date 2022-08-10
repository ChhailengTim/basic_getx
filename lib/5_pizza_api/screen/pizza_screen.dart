import 'package:basic_getx/5_pizza_api/controller/pizza_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PizzaScreen extends StatefulWidget {
  const PizzaScreen({Key? key}) : super(key: key);

  @override
  State<PizzaScreen> createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {
  final PizzaController pizzaController = Get.put(PizzaController());
  @override
  void initState() {
    pizzaController.getListPizza();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza API')),
      body: SafeArea(
        child: ListView.builder(
          itemCount: pizzaController.listPizza.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('${pizzaController.listPizza[index].name}'),
                leading: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      "${pizzaController.listPizza[index].image}"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
