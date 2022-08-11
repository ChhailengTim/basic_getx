import 'package:basic_getx/12_note_api/model/note_product_model.dart';
import 'package:basic_getx/8_pch_api_idg/utils/constaint.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NoteRepo extends GetxController {
  Future<Map<String, dynamic>?> getNote(Pagination pagination) async {
    try {
      final noteResponse =
          await dio.post('get_newest_product', queryParameters: {
        'page': pagination.currentPage! + 1,
        'table_size': pagination.perPage,
      });
      if (noteResponse.statusCode == 200) {
        var responseNote = noteResponse.data['data'];
        return {
          'data': getNote(responseNote['data']),
          'pagination': Pagination.fromJson(responseNote['pagination']),
        };
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
