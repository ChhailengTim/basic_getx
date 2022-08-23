import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/image_slide/controller/slide_controller.dart';
import 'package:product_app/image_slide/view/slid_view.dart';

class SlideImageScreen extends StatelessWidget {
  const SlideImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SlideController slideController = Get.put(SlideController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: slideController.listSlide.length,
          itemBuilder: (context, index, realIndex) {
            return GestureDetector(
              onTap: () {
                Get.to(
                  () => SlideView(
                    index: index,
                  ),
                );
              },
              child: Hero(
                tag: '${slideController.listSlide[index].title}',
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "${slideController.listSlide[index].image}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(
              milliseconds: 300,
            ),
          ),
        ),
      ),
    );
  }
}
