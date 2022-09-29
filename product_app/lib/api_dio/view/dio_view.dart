import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/model/dio_model.dart';
import 'package:product_app/api_dio/view/screens/commision.dart';
import 'package:product_app/api_dio/view/widgets/refresh_widget.dart';
import 'package:product_app/api_dio/view/widgets/widget.dart';
import 'package:product_app/api_dio/view_model/dio_view_model.dart';

class ApiwithDioScreen extends StatelessWidget {
  ApiwithDioScreen({super.key});
  final projectDioModel = Get.put(ProjectDioModel());
  static String? search;
  final TextEditingController textinput = TextEditingController();

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

  Future _refresh() async {
    projectDioModel.projectDataPerPage = PaginationModel(perPage: 10);
    await projectDioModel.getData(search: search);
  }

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(scrollListener);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CommisionScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
        title: TextField(
          controller: textinput,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search',
          ),
          onChanged: (v) {
            search = v == '' ? null : v;
            _refresh();
          },
        ),
      ),
      body: GetX<ProjectDioModel>(
        init: ProjectDioModel(),
        initState: (state) {
          scrollController.addListener(scrollListener);
          if (state.controller!.projectData.isEmpty) {
            state.controller?.getData(search: search);
          }
        },
        builder: (controller) => RefreshWidget(
          onRefresh: _refresh,
          child: controller.projectData.isEmpty
              ? WidgetsUse().listProjectShimmer()
              : WidgetsUse.instance.listProject(
                  listProject: controller.projectData,
                  controller: scrollController,
                ),
        ).buildAndroid(),
      ),
    );
  }
}
