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
          if (projectModel.imageGallery != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int index = 0; index < 3; index++)
                  projectModel.imageGallery!.length > index
                      ? Stack(
                          children: [
                            index < 3
                                ? imageCached(
                                    'https://test-pms-chhaythai-api.idev.group/images/project/${projectModel.imageGallery?[index].name}',
                                    width: 100,
                                    height: 100,
                                  )
                                : const SizedBox(),
                            projectModel.imageGallery!.length > 3 && index == 2
                                ? Positioned(
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      color: Colors.white24,
                                      alignment: Alignment.center,
                                      child: Text(
                                        '+${projectModel.imageGallery!.length - 3}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        )
                      : const SizedBox(),
              ],
            ),
        ],
      ),
    );
  }
}
