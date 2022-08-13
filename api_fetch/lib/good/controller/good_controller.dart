import 'package:api_fetch/good/model/good_model.dart';
import 'package:api_fetch/good/repo/good_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GoodController extends GetxController {
  final GoodRepo goodRepo = Get.put(GoodRepo());
  final _data = <Model>[].obs;
  final _isLoading = false.obs;
  bool hasNext = true;
  var pagination = Pagination(perPage: 10);

  List<Model> get data => _data.toList();


  Future<void> getGood() async {
    try {
      if (pagination.currentPage == 0) _data.clear();
      if (pagination.currentPage! < pagination.lastPage!) {
        _isLoading.value = true;
        if (_isLoading.value) return Future.value();
        final response = await goodRepo.getGood(pagination);
        if (response != null) {
          _data.addAll(response['data']);
          pagination = response['pagination'];
          hasNext = _data.length < pagination.total!;
          update();
          debugPrint(_data.toString());
        } else {
          hasNext = false;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    _isLoading.value = false;
  }
}
