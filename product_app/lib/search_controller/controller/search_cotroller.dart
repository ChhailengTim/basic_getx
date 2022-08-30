import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_app/search_controller/model/search_cmodel.dart';

class SearchController extends GetxController {
  final controller = TextEditingController();
  var allCatModel = <CatModel>[
    CatModel(
      title: 'Meow Meow',
      imageURL: 'assets/images/cat1.jpg',
    ),
    CatModel(
      title: 'Cat Meow',
      imageURL: 'assets/images/cat2.png',
    ),
    CatModel(
      title: 'Fat Cat',
      imageURL: 'assets/images/cat3.jpg',
    ),
    CatModel(
      title: 'Tai Tai',
      imageURL: 'assets/images/cat4.jpg',
    ),
    CatModel(
      title: 'Ter Ter',
      imageURL: 'assets/images/cat5.jpg',
    ),
    CatModel(
      title: 'Ly Ly',
      imageURL: 'assets/images/cat6.jpg',
    ),
  ].obs;
  var listChip = <String>[
    'Meow',
    'Cat',
    'Fat',
    'Ter ter',
    'Ly ly',
  ];

  void searchCat(String query) {
    final suggestions = allCatModel.where((cat) {
      final catTitle = cat.title!.toLowerCase();
      final input = query.toLowerCase();
      return catTitle.contains(input);
    }).toList();
    allCatModel.value = suggestions;
  }
}
