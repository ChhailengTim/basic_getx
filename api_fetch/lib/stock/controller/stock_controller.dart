import 'package:api_fetch/stock/model/stock_model.dart';
import 'package:api_fetch/stock/repository/stock_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StockController extends GetxController {
  final stockRepository = Get.put(StockRepository());
  final listStock = <Stock>[].obs;
  final isLoaded = false.obs;
  var pagination = Pagination(perPage: 10);
  bool hasNext = true;

  List<Stock> get data => listStock.toList();

  @override
  void onInit() async {
    await getStock();
    super.onInit();
  }

  Future<void> getStock() async {
    try {
      if (pagination.currentPage == 0) listStock.clear();
      if (pagination.currentPage < pagination.lastPage) {
        isLoaded.value = true;
        debugPrint(isLoaded.value.toString());
        if (isLoaded.value) return Future.value();
        final response = await stockRepository.getStock(pagination);
        if (response != null) {
          listStock.addAll(response['data']);
          pagination = response['pagination'];
          hasNext = listStock.length < pagination.total!;
          update();
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
