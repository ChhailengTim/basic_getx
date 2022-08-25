import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/list_chip/controller/controller.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key, this.num}) : super(key: key);
  final int? num;

  @override
  Widget build(BuildContext context) {
    final postController = Get.put(PostController());
    return Scaffold(
      appBar: AppBar(
        title: Text('$num'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              postController.getPost();
            },
            child: const Text('Getdata'),
          ),
          //Text('${postController.listPost.id}')
        ],
      ),
    );
  }
}
