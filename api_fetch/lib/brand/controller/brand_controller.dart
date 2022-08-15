import 'package:api_fetch/brand/model/brand_model.dart';
import 'package:api_fetch/good/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BrandController extends GetxController {
  final baseURL =
      'https://pchbiz-admin.idevgroup.club/api/user_buyer_app/get_newest_product'
          .obs;
  final brandList = <BrandModel>[].obs;
  final brand = BrandModel().obs;

  List<BrandModel> get data => brandList;

  Future<Map<String, dynamic>?> getBrandData() async {
    try {
      var response = await dio.post(baseURL.value);
      if (response.statusCode == 200) {
        brandList.clear();
        response.data['data']['data'].map((e) {
          brand.value = BrandModel.fromJson(e);
          brandList.add(brand.value);
        }).toList();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
