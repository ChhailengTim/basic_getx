import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/realestate_screen/real_estate_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const RealEstateScreen()),
      ],
    );
  }
}
