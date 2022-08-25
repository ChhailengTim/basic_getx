import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/swiper/controller/swiper_controller.dart';

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final swiperController = Get.put(SwiperControllers());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Swiper'),
      ),
      body: Swiper(
        itemCount: swiperController.listSwiper.length,
        itemBuilder: (contex, index) {
          return Image.asset(
            '${swiperController.listSwiper[index].image}',
          );
        },
        customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
          ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
          ..addTranslate([
            const Offset(-370.0, -40.0),
            const Offset(0.0, 0.0),
            const Offset(370.0, -40.0)
          ]),
        itemWidth: 300.0,
        itemHeight: 400.0,
        layout: SwiperLayout.CUSTOM,
      ),
    );
  }
}
