import 'package:basic_getx/12_note_api/contants.dart';
import 'package:basic_getx/api_learn/model/user_api_model.dart';

class ApiRepository {
  Future<List<UserApiModel>?> getUser() async {
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        final responseData = response.data;
        return userApiModelToList(responseData);
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
