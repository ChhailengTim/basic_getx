import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/view/widgets/list_data.dart';
import 'package:product_app/api_dio/view_model/dio_view_model.dart';

class ApiwithDioScreen extends StatelessWidget {
  const ApiwithDioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final projectDioModel = Get.put(ProjectDioModel());
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Dio()'),
      ),
      body: Column(
        children: [
          Obx(() => Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const ListData(
                        //image:
                        //  '${projectDioModel.projectData[index].imageThumbnail}',
                        );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox();
                  },
                  itemCount: projectDioModel.projectData.length,
                ),
              )),
        ],
      ),
    );
  }
}
