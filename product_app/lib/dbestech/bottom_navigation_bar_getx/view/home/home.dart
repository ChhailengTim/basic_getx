import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/home/home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${controller.title}',
          style: const TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
