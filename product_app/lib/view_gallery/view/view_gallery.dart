import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/view_gallery/controller/view_controller.dart';
import 'package:product_app/view_gallery/view/view_image.dart';

class ViewGalleryScreen extends StatelessWidget {
  const ViewGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewController = Get.put(ViewController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Gallery'),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: viewController.listImage
                  .asMap()
                  .entries
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => ViewImageScreen(
                                indext: e.key,
                              ));
                        },
                        child: Hero(
                          tag: 'test',
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(e.value),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
