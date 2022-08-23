import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_app/superapp/contant/constant.dart';
import 'package:product_app/superapp/model/superapp_model.dart';

class SuperAppRepo extends GetxController {
  Future<Map<String, dynamic>?> getProductRepo(
      PaginationPage paginationPage) async {
    try {
      final superappResponse =
          await thedio.post('/get_newest_product', queryParameters: {
        'page': paginationPage.currentPage + 1,
        'table_size': paginationPage.perPage,
      });
      if (superappResponse.statusCode == 200) {
        var superappData = superappResponse.data['data'];
        return {
          'data': getProductsModel(superappData['data']),
          'pagination': PaginationPage.fromJson(superappData['pagination']),
        };
      }
    } catch (e) {
      debugPrint(
        e.toString(),
      );
    }
    return null;
  }
}
