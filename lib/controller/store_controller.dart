import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {
  final storeName = "".obs;
  final followerCount = 0.obs;
  final storeStatuse = true.obs;
  final followerList = [].obs;
  final reviews = [].obs;

  final storeNameEditingController = TextEditingController();
  final reviewEditingController = TextEditingController();
  final followerEditingController = TextEditingController();
  final reviewNameEditingController = TextEditingController();

  updateStoreName(String name) {
    storeName(name);
  }

  updateFollowerCount() {
    followerCount(followerCount.value + 1);
  }

  void storeStatusOpen(bool isOpen) {
    storeStatuse(isOpen);
  }
}
