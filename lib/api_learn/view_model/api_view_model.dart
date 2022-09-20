import 'package:basic_getx/api_learn/model/user_api_model.dart';
import 'package:basic_getx/api_learn/view_model/repo/api_repo.dart';
import 'package:get/get.dart';

class ApiViewModel extends GetxController {
  final _apiRepository = Get.put(ApiRepository());

  final RxList<UserApiModel> _user = <UserApiModel>[].obs;
  List<UserApiModel> get user => _user.toList();
  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  Future getUsers() async {
    try {
      final response = await _apiRepository.getUser();
      if (response != null) {
        _user.assignAll(response);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
