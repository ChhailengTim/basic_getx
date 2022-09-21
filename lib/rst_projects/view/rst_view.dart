import 'package:basic_getx/rst_projects/view_model/repository/rst_repo.dart';
import 'package:basic_getx/rst_projects/view_model/rst_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RealestateViewScreen extends StatelessWidget {
  const RealestateViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rstRepo = Get.put(RstRepo());
    final rstController = Get.put(RstController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('RealestateViewScreen'),
      ),
      body: Column(
        children: [
          for (int i = 0; i < rstController.listRstData.length; i++)
            Text('${rstController.listRstData[i].projectName}'),
          ElevatedButton(
            onPressed: () {
              rstRepo.getRstData();
            },
            child: const Text('GetData'),
          ),
        ],
      ),
    );
  }
}
