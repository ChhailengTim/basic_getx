import 'package:basic_getx/controller/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storeController = Get.put(StoreController());
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Column(
            children: [
              TextField(
                controller: storeController.reviewNameEditingController,
                onChanged: (v) {
                  storeController.storeName(v);
                },
                decoration: const InputDecoration(
                  label: Text('Enter User name'),
                  hintText: 'Your name',
                ),
              ),
              Text('User Name: ${storeController.storeName.value}'),
              ElevatedButton(
                onPressed: () {},
                child: const Center(
                  child: Text('Update name'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
