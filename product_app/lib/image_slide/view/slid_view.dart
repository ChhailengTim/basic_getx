import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/image_slide/controller/slide_controller.dart';

class SlideView extends StatelessWidget {
  const SlideView({Key? key, this.index}) : super(key: key);
  final int? index;

  @override
  Widget build(BuildContext context) {
    final SlideController slideController = Get.put(SlideController());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Hero(
          tag: '${slideController.listSlide[index!].title}',
          child: SizedBox(
            height: Get.height * .5,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('${slideController.listSlide[index!].image}'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                '${slideController.listSlide[index!].title}',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 50,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
