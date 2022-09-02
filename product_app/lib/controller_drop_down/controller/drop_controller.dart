import 'package:get/get.dart';

class DropController extends GetxController {
  var fruit = '';
  var dropdownItemList = [
    {'label': 'apple', 'value': 'apple'}, // label is required and unique
    {'label': 'banana', 'value': 'banana'},
    {'label': 'grape', 'value': 'grape'},
    {'label': 'pineapple', 'value': 'pineapple'},
    {'label': 'grape fruit', 'value': 'grape fruit'},
    {'label': 'kiwi', 'value': 'kiwi'},
  ].obs;
}
