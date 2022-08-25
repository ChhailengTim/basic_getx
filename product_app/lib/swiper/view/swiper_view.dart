import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/defualt_swiper.dart';
import 'screens/custom_swiper.dart';
import 'screens/pagination_swiper.dart';
import 'screens/stack_swiper.dart';
import 'screens/tinder_swiper.dart';
import 'widgets/inkwell_button.dart';

class SwiperScreen extends StatelessWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swiper List Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWellButton(
              textButton: 'Defualt Swiper',
              onTap: () {
                Get.to(() => const DefualtSwiper());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InkWellButton(
              onTap: () {
                Get.to(const StackSwiper());
              },
              textButton: 'Stack Swiper',
              color: Colors.blue[300],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWellButton(
              onTap: () {
                Get.to(const TinderSwiper());
              },
              textButton: 'Tinder Swiper',
              color: Colors.green,
            ),
            const SizedBox(
              height: 20,
            ),
            InkWellButton(
              onTap: () {
                Get.to(() => const CustomSwiper());
              },
              textButton: 'Custom Swiper',
              color: Colors.brown,
            ),
            const SizedBox(
              height: 20,
            ),
            InkWellButton(
              onTap: () {
                Get.to(() => const PaginationSwiper());
              },
              textButton: 'Pagination Swiper',
              color: Colors.pink,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
