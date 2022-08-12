import 'package:basic_getx/13_api_default/model/default_model.dart';
import 'package:basic_getx/13_api_default/repository/default_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DefaultController extends GetxController {
  final defaultRepo = Get.put(DefaultRepo());
  final _data = <Default>[].obs;
  final _isLoad = false.obs;
  dynamic pagination = Paginations(perPage: 10);
  bool hasNext = true;

  List<Default> get data => _data.toList();

  @override
  void onInit() async {
    await getDataDefault();
    super.onInit();
  }

  Future<void> getDataDefault() async {
    try {
      if (pagination.currentPage == 0) _data.clear();
      if (pagination.currentPage < pagination.lastPage) {
        debugPrint(_isLoad.value.toString());
        if (_isLoad.value) return Future.value();
        _isLoad.value = true;
        final responseDff = await defaultRepo.getDefault(pagination);
        if (responseDff != null) {
          _data.addAll(responseDff['data']);
          pagination = responseDff['pagination'];
          hasNext = _data.length < pagination.total;
          update();
        } else {
          hasNext = false;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    
  }
}
