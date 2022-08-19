import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/hero_image/controller/hero_controller.dart';
import 'package:product_app/hero_image/view/hero_view.dart';

class HeroHome extends StatelessWidget {
  const HeroHome({super.key});

  @override
  Widget build(BuildContext context) {
    final HeroControllers heroController = Get.put(HeroControllers());
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(
                () => HeroView(
                  index: index,
                ),
              );
            },
            child: Hero(
              tag: '${heroController.listHero[index].title}',
              child: SizedBox(
                height: 200,
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(
                            '${heroController.listHero[index].image}'),
                      ),
                    ),
                    child: Text(
                      '${heroController.listHero[index].title}',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox();
        },
        itemCount: heroController.listHero.length,
      ),
    );
  }
}
