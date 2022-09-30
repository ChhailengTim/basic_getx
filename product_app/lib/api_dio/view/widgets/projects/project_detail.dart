import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/model/dio_model.dart';
import 'package:product_app/api_dio/view/widgets/image_cache.dart';

// ignore: must_be_immutable
class ProjectDetail extends StatelessWidget {
  ProjectDetail({Key? key, this.indext}) : super(key: key);
  int? indext;

  @override
  Widget build(BuildContext context) {
    final projectModel = Get.arguments as ProjectModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Detail'),
      ),
      body: ListView(
        children: [
          imageCached(
            'https://test-pms-chhaythai-api.idev.group/images/project/${projectModel.imageThumbnail}',
            width: Get.width,
            height: (Get.width - 16) / 2.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [],
          ),
        ],
      ),
    );
  }
}
