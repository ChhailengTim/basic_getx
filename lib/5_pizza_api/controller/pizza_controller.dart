import 'package:basic_getx/5_pizza_api/model/pizza_model.dart';
import 'package:basic_getx/api_base_helper/api_base_helper.dart';
import 'package:get/get.dart';

class PizzaController extends GetxController {
  final apiBaseHelper = ApiBaseHelper();
  final pizza = PizzaModel().obs;
  final listPizza = <PizzaModel>[].obs;

  Future getListPizza() async {
    apiBaseHelper
        .onNetworkRequesting(
          urlFull: "https://gunter-food-api.herokuapp.com/pizza",
          methode: METHODE.get,
          isAuthorize: false,
        )
        .then((value) => {
              listPizza.clear(),
              value.map((e) {
                pizza.value = PizzaModel.fromJson(e);
                listPizza.add(pizza.value);
              }).toList(),
            });
  }
}
