import 'package:basic_getx/11_idg_api/view/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '11_idg_api/app_bar_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarModel(),
    );
  }
}
