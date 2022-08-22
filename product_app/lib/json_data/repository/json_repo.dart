import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_app/json_data/json_utile/json_contain.dart';

class JsonRepository extends GetxController {
  Future getCountry() async {
    try {
      final response = await url.get('/countries.json');
      if (response.statusCode == 200) {
        var data = response.data;
        return data;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
