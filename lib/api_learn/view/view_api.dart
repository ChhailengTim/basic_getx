import 'package:basic_getx/api_learn/view_model/api_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewApi extends StatelessWidget {
  const ViewApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiViewModel = Get.put(ApiViewModel());
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Learn'),
      ),
      body: Column(
        children: [
          for (int i = 0; i < apiViewModel.user.length; i++)
            Row(
              children: [
                Text('${apiViewModel.user[i].id}'),
                const SizedBox(
                  width: 10,
                ),
                Text('${apiViewModel.user[i].name}'),
              ],
            ),
          ElevatedButton(
            onPressed: () {
              debugPrint('${apiViewModel.user.length}');
            },
            child: const Text('Get'),
          ),
        ],
      ),
    );
  }
}
