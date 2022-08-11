import 'package:basic_getx/9_api_fetch_dio/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class ApiController extends GetxController {
  final postUrl =
      'https://pchbiz-admin.idevgroup.club/api/user_buyer_app/get_newest_product'
          .obs;
  final listProduct = <Products>[].obs;

  Future<List<Products>> getProductList() async {
    try {
      var response = await Dio().post(postUrl.value);
      if (response.statusCode == 200) {
        response.data["data"]["data"].map((e) {
          Products productsData = Products.fromJson(e);
          listProduct.add(productsData);
        }).toList();
        debugPrint('List Length = ${listProduct.length}');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return listProduct;
  }
}
