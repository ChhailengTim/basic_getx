import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_app/superapp/model/superapp_model.dart';
import 'package:product_app/superapp/repo/superapp_repo.dart';

class SuperAppController extends GetxController {
  final superAppRepo = Get.put(SuperAppRepo());
  final listSuperapp = <Products>[].obs;
  final _isLoaded = false.obs;
  var pagination = PaginationPage(total: 10);
  bool hasNext = true;

  List<Products> get data => listSuperapp.toList();

  @override
  void onInit() {
    getSuperappList();
    super.onInit();
  }

  Future<void> getSuperappList() async {
    try {
      if (pagination.currentPage == 0) listSuperapp.clear();
      if (pagination.currentPage < pagination.lastPage) {
        debugPrint(_isLoaded.value.toString());
        if (_isLoaded.value) return Future.value();
        _isLoaded.value = true;
        final responseDataSuperapp =
            await superAppRepo.getProductRepo(pagination);
        if (responseDataSuperapp != null) {
          listSuperapp.addAll(responseDataSuperapp['data']);
          pagination = responseDataSuperapp['pagination'];
          hasNext = listSuperapp.length < pagination.total!;
          update();
        } else {
          hasNext = false;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    _isLoaded.value = false;
  }
}
