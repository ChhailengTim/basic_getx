import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:product_app/json_data/model/json_model.dart';
import 'package:product_app/json_data/repository/json_repo.dart';

class JsonController extends GetxController {
  final listJson = <Datum>[].obs;
  final thejson = Datum().obs;
  final JsonRepository jsonRepository = Get.put(JsonRepository());

  Future<void> getJson() async {
    try {
      // var response = await jsonRepository.jsonData();
      final response =
          await rootBundle.loadString('lib/json_data/json/countries.json');
      var data = await json.decode(response);
      data.map((e) {
        thejson.value = Datum.fromJson(e);
        listJson.addAll(data['data']);
      }).toList();
      debugPrint(listJson.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
