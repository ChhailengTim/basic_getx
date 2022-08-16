import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_app/model/product_model.dart';
import 'package:product_app/repository/product_repo.dart';

class ProductController extends GetxController {
  final productRepository = Get.put(ProductRepository());
  final listProduct = <Product>[].obs;
  final _isLoaded = false.obs;
  var pagination = Pagination(total: 10);
  bool hasNext = true;
  List<Product> get data => listProduct.toList();
  @override
  void onInit() async {
    await getProducts();
    super.onInit();
  }

  Future<void> getProducts() async {
    try {
      if (pagination.currentPage == 0) listProduct.clear();
      if (pagination.currentPage < pagination.lastPage) {
        // ignore: avoid_print
        print(_isLoaded.value);
        if (_isLoaded.value) return Future.value();
        _isLoaded.value = true;
        final response = await productRepository.getProduct(pagination);
        if (response != null) {
          listProduct.addAll(response['data']);
          pagination = response['pagination'];
          hasNext = listProduct.length < pagination.total!;
          update();
        } else {
          hasNext = false;
        }
      }
    } catch (e) {
      debugPrint('$e');
    }
    _isLoaded.value = false;
  }
}
