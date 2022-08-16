import 'package:api_fetch/outcome/model/outcome_model.dart';
import 'package:api_fetch/outcome/outcome_constand.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OutcomeRepository extends GetxController {
  Future<Map<String, dynamic>?> getOutcome(PaginationModel pagination) async {
    try {
      final response = await dio.post('/get_newest_product', queryParameters: {
        'data': pagination.currentPage + 1,
        'table_size': pagination.perPage,
      });
      if (response.statusCode == 200) {
        var responseData = response.data['data'];
        return {
          'data': getOutcome(responseData['data']),
          'pagination': PaginationModel.fromJson(responseData['pagination']),
        };
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
