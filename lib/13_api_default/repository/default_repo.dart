import 'package:basic_getx/12_note_api/contants.dart';
import 'package:basic_getx/13_api_default/model/default_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DefaultRepo extends GetxController {
  Future<Map<String, dynamic>?> getDefault(Paginations paginations) async {
    try {
      final responseDF =
          await dio.post('/get_newest_product', queryParameters: {
        'page': paginations.perPage! + 1,
        'table_size': paginations.perPage,
      });
      if (responseDF.statusCode == 200) {
        var responseDFData = responseDF.data['data'];
        return {
          'data': Default(responseDFData['data']),
          'pagination': Paginations.fromJson(responseDFData['pagination']),
        };
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
