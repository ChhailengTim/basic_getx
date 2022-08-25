import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/swiper/controller/swiper_controller.dart';

class DefualtSwiper extends StatelessWidget {
  const DefualtSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SwiperControllers swiperController = Get.put(SwiperControllers());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Defualt Swiper'),
        ),
        body: Swiper(
          itemCount: swiperController.listSwiper.length,
          itemBuilder: (context, index) {
            return Image.asset(
              '${swiperController.listSwiper[index].image}',
              //fit: BoxFit.fill,
            );
          },
        ));
  }
}
