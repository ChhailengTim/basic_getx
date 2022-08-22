import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class JsonRepository extends GetxController {
  Future jsonData() async {
    final response =
        await rootBundle.loadString('lib/json_data/json/countries.json');
    var data = await json.decode(response);
    debugPrint(data.toString());
    return data['data'];
  }
}
