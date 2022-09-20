import 'package:basic_getx/api_v1/view_model/repository/api_v1_repo.dart';
import 'package:basic_getx/api_v1/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewV1Screen extends StatelessWidget {
  const ViewV1Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final a = Get.put(ApiV1Repo());
    final apiV1Controller = Get.put(ApiV1Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewV1Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < apiV1Controller.todoList.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${apiV1Controller.todoList[i].title}'),
                  Row(
                    children: [
                      Text('${apiV1Controller.todoList[i].id}'),
                      Checkbox(
                          value: apiV1Controller.todoList[i].completed,
                          onChanged: (bool? value) {
                            apiV1Controller.todoList[i].completed = value;
                          }),
                    ],
                  ),
                ],
              ),
            ElevatedButton(
              onPressed: () {
                a.getTodos();
              },
              child: const Text('Get'),
            ),
          ],
        ),
      ),
    );
  }
}
