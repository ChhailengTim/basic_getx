import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class TryApiController extends GetxController {
  void getHttp() async {
    try {
      var response = await Dio().post(
          'https://pchbiz-admin.idevgroup.club/api/user_buyer_app/get_newest_product');
      debugPrint(response.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
