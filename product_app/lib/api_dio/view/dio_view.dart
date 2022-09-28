import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/view/widgets/list_data.dart';
import 'package:product_app/api_dio/view_model/dio_view_model.dart';

class ApiwithDioScreen extends StatelessWidget {
  ApiwithDioScreen({super.key});
  final projectDioModel = Get.put(ProjectDioModel());

  final scrollController = ScrollController();
  void scrollListener() async {
    if (scrollController.offset >=
            scrollController.position.maxScrollExtent / 2 &&
        !scrollController.position.outOfRange) {
      if (projectDioModel.hasNext) {
        await projectDioModel.getData();
      }
    }
  }
  //#TODO
  // Future _refresh({String? search}) async {
  //   projectDioModel.projectDataPerPage = PaginationModel(perPage: 10);
  //   await projectDioModel.getData(search: search);
  // }

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(scrollListener);
    final projectDioModel = Get.put(ProjectDioModel());
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Dio()'),
      ),
      body: Column(
        children: [
          Obx(() => Expanded(
                child: projectDioModel.projectData.isEmpty
                    ? const SizedBox()
                    : ListView.separated(
                        physics: const AlwaysScrollableScrollPhysics(),
                        controller: scrollController,
                        itemBuilder: (context, index) {
                          return ListData(
                            image:
                                'https://test-pms-chhaythai-api.idev.group/images/project/${projectDioModel.projectData[index].imageThumbnail}',
                            proName:
                                '${projectDioModel.projectData[index].projectName}',
                            phones:
                                '${projectDioModel.projectData[index].phones}',
                            provinceName:
                                '${projectDioModel.projectData[index].provinceName}',
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
