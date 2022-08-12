import 'package:basic_getx/13_api_default/controller/default_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultScree extends StatelessWidget {
  const DefaultScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DefaultController defaultController = Get.put(DefaultController());
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: defaultController.data.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('${defaultController.data[index].storeName}'),
                leading: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      "${defaultController.data[index].imageThumbnail}"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
