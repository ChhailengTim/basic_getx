import 'package:basic_getx/10_try_api/controller/api_controller.dart';
import 'package:basic_getx/9_api_fetch_dio/controller/fetch_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  final apiController = Get.put(ApiController());
  final tryApiController = Get.put(TryApiController());
  @override
  void initState() {
    apiController.getProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            apiController.getProductList();
            tryApiController.getHttp();
          },
          child: const Text('Get data'),
        ),
      ),
    );
  }
}
