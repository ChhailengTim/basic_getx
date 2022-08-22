import 'package:get/get.dart';
import 'package:product_app/json_data/api_help.dart';
import 'package:product_app/json_data/model/json_model.dart';
import 'package:product_app/json_data/repository/json_repo.dart';

class JsonController extends GetxController {
  final JsonRepository jsonRepository = Get.put(JsonRepository());
  final listCountry = <CountrieModel>[].obs;
  final countrie = CountrieModel().obs;
  final apiBaseHelper = ApiBaseHelper();

  Future getCountryAll() async {
    apiBaseHelper
        .onNetworkRequesting(
            urlFull:
                'https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/countries.json',
            methode: METHODE.get,
            isAuthorize: false)
        .then((value) => {
              listCountry.clear(),
              value.map((e) {
                countrie.value = CountrieModel.fromJson(e);
                listCountry.add(countrie.value);
              }).toList(),
            });
  }
}
