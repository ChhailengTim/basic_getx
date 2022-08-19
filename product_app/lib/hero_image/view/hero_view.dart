import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/hero_image/controller/hero_controller.dart';

class HeroView extends StatelessWidget {
  const HeroView({Key? key, this.index}) : super(key: key);
  final int? index;

  @override
  Widget build(BuildContext context) {
    final HeroControllers heroController = Get.put(HeroControllers());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Hero(
          tag: '${heroController.listHero[index!].title}',
          child: SizedBox(
            height: Get.height * .5,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${heroController.listHero[index!].image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
