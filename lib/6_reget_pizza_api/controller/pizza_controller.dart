import 'package:basic_getx/6_reget_pizza_api/model/pizza_models.dart';
import 'package:basic_getx/api_base_helper/api_base_helper.dart';
import 'package:get/get.dart';

class ThePizzaController extends GetxController {
  final apiBaseHelper = ApiBaseHelper();
  final thepizza = PizzaModels().obs;
  final listthePizza = <PizzaModels>[].obs;

  Future getThePizza() async {
    apiBaseHelper
        .onNetworkRequesting(
          urlFull: "https://gunter-food-api.herokuapp.com/pizza",
          methode: METHODE.get,
          isAuthorize: false,
        )
        .then((value) => {
              listthePizza.clear(),
              value.map((e) {
                thepizza.value = PizzaModels.fromJson(e);
                listthePizza.add(thepizza.value);
              }).toList(),
            });
  }
}
