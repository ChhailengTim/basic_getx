import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/model/dio_model.dart';
import 'package:product_app/api_dio/view/widgets/image_cache.dart';
import 'package:product_app/api_dio/view/widgets/shimmer_loading.dart';

class WidgetsUse {
  WidgetsUse._();
  static final instance = WidgetsUse._();
  factory WidgetsUse() => instance;

  SingleChildScrollView listProjectShimmer() => SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ShimmerLoadingWidget(
                  width: Get.width - 16,
                  height: (Get.width - 16) / 2.5,
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ).rectangular(),
              ),
          ],
        ),
      );
  Widget listProject(
          {required List<ProjectModel> listProject,
          ScrollController? controller}) =>
      ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: controller,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: listProject.length,
        itemBuilder: (context, index) {
          return projectCard(
            onTap: () {},
            projectModel: listProject[index],
          );
        },
        separatorBuilder: (context, indext) {
          return const SizedBox(
            height: 12,
          );
        },
      );

  Widget projectCard(
          {required ProjectModel projectModel, GestureTapCallback? onTap}) =>
      InkWell(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              imageCached(
                  'https://test-pms-chhaythai-api.idev.group/images/project/${projectModel.imageThumbnail}',
                  width: Get.width - 16,
                  height: (Get.width - 16) / 2.5,
                  borderRadius: BorderRadius.circular(15)),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            projectModel.projectName!,
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop,
                                size: 14,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 5),
                              Text(projectModel.provinceName!),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
