import 'package:get/get.dart';
import 'package:product_app/image_slide/model/slide_model.dart';

class SlideController extends GetxController {
  final listSlide = <SlideModel>[
    SlideModel(
      title: 'Cat1',
      image: 'assets/images/cat1.jpg',
    ),
    SlideModel(
      title: 'Cat2',
      image: 'assets/images/cat2.png',
    ),
    SlideModel(
      title: 'Cat3',
      image: 'assets/images/cat3.jpg',
    ),
    SlideModel(
      title: 'Cat4',
      image: 'assets/images/cat4.jpg',
    ),
    SlideModel(
      title: 'Cat5',
      image: 'assets/images/cat5.jpg',
    ),
    SlideModel(
      title: 'Cat6',
      image: 'assets/images/cat6.jpg',
    ),
  ];
}
