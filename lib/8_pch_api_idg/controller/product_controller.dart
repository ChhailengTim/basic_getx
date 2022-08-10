import 'package:basic_getx/8_pch_api_idg/model/product_model.dart';
import 'package:basic_getx/8_pch_api_idg/repository/product_repo.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final _data = <Product>[].obs;
  final _isLoading = false.obs;
  var pagination = Pagination(perPage: 10);
  bool hasNext = true;

  final ProductRepo productRepo = Get.put(ProductRepo());

  List<Product> get data => _data.toList();

  Future<void> getProduct() async {
    try {
      if (pagination.currentPage == 0) _data.clear();
      if (pagination.currentPage < pagination.lastPage) {
        print(_isLoading.value);
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
      print(e);
    }
    _isLoading.value = false;
  }
}
