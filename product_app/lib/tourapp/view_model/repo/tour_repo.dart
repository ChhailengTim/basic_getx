
import 'package:product_app/tourapp/model/tour_model.dart';

import '../../../utils/constaint.dart';

class AttractionRepository {
  Future<List<AttractionModel>?> getAttractionData() async {
    try {
      final response = await dio.get('https://retoolapi.dev/Fv57y9/data');
      if (response.statusCode == 200) {
        final responseData = response.data;
        return attractionToList(responseData);
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }

  Future<List<AttractionModel>?> getAttraction() async {
    try {
      final response = await dio.get('https://retoolapi.dev/02Fclj/data2');
      if (response.statusCode == 200) {
        final responseData = response.data;
        return attractionToList(responseData);
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
