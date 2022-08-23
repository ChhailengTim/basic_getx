import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final username = TextEditingController();
  final password = TextEditingController();
  bool validateUsername = false;
  bool validatePassword = false;
}
