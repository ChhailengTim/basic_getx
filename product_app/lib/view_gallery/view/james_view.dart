import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:product_app/view_gallery/controller/view_controller.dart';

class JamesView extends StatelessWidget {
  JamesView({super.key, this.indext = 0})
      : pageController = PageController(initialPage: indext);

  final int indext;
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    final viewController = Get.put(ViewController());
    return Scaffold(
      appBar: AppBar(),
      body: PhotoViewGallery.builder(
        pageController: pageController,
        itemCount: viewController.listNetWork.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(viewController.listNetWork[index]),
            heroAttributes: const PhotoViewHeroAttributes(tag: 'test'),
          );
        },
      ),
    );
  }
}
