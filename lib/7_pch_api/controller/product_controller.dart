import 'package:basic_getx/7_pch_api/model/product_model.dart';
import 'package:basic_getx/api_base_helper/api_base_helper.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final apiBaseHelper = ApiBaseHelper();
  final product = Products().obs;
  final listProducts = <Products>[].obs;

  Future getListProducts() async {
    apiBaseHelper
        .onNetworkRequesting(
          urlFull:
              'https://pchbiz-admin.idevgroup.club/api/user_buyer_app/get_newest_product',
          methode: METHODE.post,
          isAuthorize: false,
        )
        .then((value) => {
              listProducts.clear(),
              value.map((e) {
                product.value = Products.fromJson(e);
                listProducts.add(product.value);
              }).toList(),
            });
  }
}
