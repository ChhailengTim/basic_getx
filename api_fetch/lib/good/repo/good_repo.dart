import 'package:api_fetch/good/model/good_model.dart';
import 'package:api_fetch/product/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GoodRepo extends GetxController {
  Future<Map<String, dynamic>?> getGood(Pagination pagination) async {
    try {
      var response = await dio.post(
        '/get_newest_product',
      );
      if (response.statusCode == 200) {
        var responseData = response.data['data']['data'];
        return {
          'data': Model(responseData['data']),
          'pagination': Pagination.fromJson(responseData['pagination']),
        };
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
