import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
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
      body: Column(
        children: [
          //for (int i = 0; i < viewController.listNetWork.length; i++)
          ElevatedButton(
            onPressed: () async {
              String url = viewController.listNetWork[indext];

              final tempDir = await getTemporaryDirectory();
              final path = '${tempDir.path}/myfile.jpg';
              await Dio().download(url, path);
              await GallerySaver.saveImage(url);
            },
            child: const Text('Download Image'),
          ),
          Expanded(
            child: PhotoViewGallery.builder(
              pageController: pageController,
              itemCount: viewController.listNetWork.length,
              builder: (context, index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider:
                      NetworkImage(viewController.listNetWork[index]),
                  heroAttributes: const PhotoViewHeroAttributes(tag: 'test'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  
  getTemporaryDirectory() {}
}
