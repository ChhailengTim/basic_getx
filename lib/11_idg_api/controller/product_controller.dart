import 'package:basic_getx/11_idg_api/model/product_model.dart';
import 'package:basic_getx/11_idg_api/repository/product_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final _data = <Product>[].obs;
  final _isLoading = false.obs;
  var pagination = Pagination(perPage: 10);
  bool hasNext = true;

  final productRepo = Get.put(ProductRepo());

  List<Product> get data => _data.toList();
  @override
  void onInit() async {
    await getProduct();
    super.onInit();
  }

  Future<void> getProduct() async {
    try {
      if (pagination.currentPage == 0) _data.clear();
      if (pagination.currentPage < pagination.lastPage) {
        debugPrint(_isLoading.value.toString());
        if (_isLoading.value) return Future.value();
        _isLoading.value = true;
        final response = await productRepo.getProduct(pagination);
        if (response != null) {
          _data.addAll(response['data']);
          pagination = response['pagination'];
          hasNext = _data.length < pagination.total!;
          update();
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
