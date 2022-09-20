import 'package:basic_getx/api_v1/model/model_v1.dart';
import 'package:get/get.dart';

import 'repository/api_v1_repo.dart';

class ApiV1Controller extends GetxController {
  final _apiV1Repo = Get.put(ApiV1Repo());
  final RxList<TodosModel> _todoList = <TodosModel>[].obs;
  List<TodosModel> get todoList => _todoList.toList();
  @override
  void onInit() {
    getTodoData();
    super.onInit();
  }

  Future getTodoData() async {
    try {
      final response = await _apiV1Repo.getTodos();
      if (response != null) {
        _todoList.addAll(response);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
