import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:product_app/counties/model/countrie_model_data.dart';
import 'package:product_app/json_data/api_help.dart';

class CountrieControllerData extends GetxController {
  late final listCountrieData = <CountrieModelData>[].obs;
  final countrieData = CountrieModelData().obs;
  final apiBaseHelper = ApiBaseHelper();

  Future getCountreiData() async {
    var getData =
        await rootBundle.loadString('lib/counties/json/countrie_data.json');
    listCountrieData.value = json.decode(getData);
    return listCountrieData.toList();
  }
}
