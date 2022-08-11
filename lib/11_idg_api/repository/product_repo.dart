import 'package:basic_getx/11_idg_api/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../8_pch_api_idg/utils/constaint.dart';

class ProductRepo extends GetxController {
  Future<Map<String, dynamic>?> getProduct(Pagination pagination) async {
    try {
      final response = await dio.post('/get_newest_product', queryParameters: {
        'page': pagination.currentPage + 1,
        'table_size': pagination.perPage,
      });
      if (response.statusCode == 200) {
        var responseData = response.data['data']; 
        return {
          'data': getProductModel(responseData['data']),
          'pagination': Pagination.fromJson(responseData['pagination']),
        };
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return getProduct(pagination);
  }
}
