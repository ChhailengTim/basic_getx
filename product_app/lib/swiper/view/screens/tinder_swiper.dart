import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/swiper/controller/swiper_controller.dart';

class TinderSwiper extends StatelessWidget {
  const TinderSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final swiperController = Get.put(SwiperControllers());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tinder Swiper'),
      ),
      body: Swiper(
        itemCount: swiperController.listSwiper.length,
        itemBuilder: (contex, index) {
          return Image.asset(
            '${swiperController.listSwiper[index].image}',
          );
        },
        itemWidth: 300.0,
        itemHeight: 400.0,
        layout: SwiperLayout.TINDER,
      ),
    );
  }
}
