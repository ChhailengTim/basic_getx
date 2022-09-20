import 'package:basic_getx/api_v1/model/model_v1.dart';
import 'package:dio/dio.dart';

class ApiV1Repo {
  Future<List<TodosModel>?> getTodos() async {
    try {
      final response =
          await Dio().get('https://jsonplaceholder.typicode.com/todos');
      if (response.statusCode == 200) {
        final responseData = response.data;
        return todosModelToList(responseData);
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
