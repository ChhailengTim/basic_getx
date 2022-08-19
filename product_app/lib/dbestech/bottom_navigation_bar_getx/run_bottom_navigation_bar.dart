import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/dashboard/dashboard.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/dashboard/dashboard_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const Dashboard(),
          binding: DashBoardBinding(),
        ),
      ],
    );
  }
}
