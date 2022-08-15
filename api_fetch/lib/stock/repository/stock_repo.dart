
import 'package:api_fetch/stock/containts.dart';
import 'package:api_fetch/stock/model/stock_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StockRepository extends GetxController {
  Future<Map<String, dynamic>?> getStock(Pagination pagination) async {
    try {
      var response = await dio.post('/get_newest_product', queryParameters: {
        'page': pagination.currentPage + 1,
        'table_size': pagination.perPage,
      });
      if (response.statusCode == 200) {
        final responseData = response.data['data'];
        return {
          'page': getStockModel(responseData['data']),
          'pagination': Pagination.fromJson(responseData['pagination']),
        };
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
