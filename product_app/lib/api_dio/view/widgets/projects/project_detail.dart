import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/view_model/dio_view_model.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projectDioModel = Get.put(ProjectDioModel());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Detail'),
      ),
      body: ListView(
        children: const [],
      ),
    );
  }
}
