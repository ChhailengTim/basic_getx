import 'package:api_fetch/brand/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostController brandController = Get.put(PostController());
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemCount: brandController.postList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('${brandController.data[index].title}'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
