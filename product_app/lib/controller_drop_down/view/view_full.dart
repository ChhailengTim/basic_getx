// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ViewImageFullScreen extends StatelessWidget {
//   final bool isNetwork;
//   final int index;
//   final List<dynamic> images;
//   final bool? isAddEdit;
//   const ViewImageFullScreen({
//     Key? key,
//     required this.isNetwork,
//     required this.index,
//     required this.images,
//     this.isAddEdit,
//   }) : super(key: key);

//   Future saveImage({required String image}) async {
//     openLoadingThreeArchedCircle();
//     String url = image;
//     await GallerySaver.saveImage(url, toDcim: true).then(
//       (value) => value!
//           ? Util.showSnackBar(
//               'successful', 'this image have been saved to your phone',
//               isError: false)
//           : Util.showSnackBar('fail', 'something error', isError: true),
//     );
//     closeLoadingThreeArchedCircle();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final viewController = Get.put(ViewImageController());
//     viewController.onSwiped(index);
//     return Material(
//       child: GetX<ViewImageController>(
//         init: ViewImageController(),
//         builder: (controller) => Container(
//           color: Colors.black12,
//           child: Stack(
//             children: [
//               GestureDetector(
//                 onTap: () => controller.onChangeShowTop(),
//                 child: PageView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   onPageChanged: (value) => controller.onSwiped(value),
//                   controller: PageController(initialPage: index),
//                   children: [
//                     if (isNetwork)
//                       for (int i = 0; i < images.length; i++)
//                         Hero(
//                           tag: isAddEdit != null
//                               ? 'photos0'
//                               : i > 3
//                                   ? 'image3'
//                                   : 'image$i',
//                           child: InteractiveViewer(
//                             maxScale: 4,
//                             child: images[i].contains('https://')
//                                 ? Util.cachedNetWorkImage(
//                                     imageUrl: images[i],
//                                     boxFit: AppSize.boxFitContain,
//                                   )
//                                 : Util.fileImage(
//                                     images[i],
//                                     fit: AppSize.boxFitContain,
//                                   ),
//                           ),
//                         ),
//                     if (!isNetwork)
//                       for (int i = 0; i < images.length; i++)
//                         Padding(
//                           padding: EdgeInsets.only(
//                             top: AppSize.padding300.toDouble(),
//                             bottom: AppSize.padding300.toDouble(),
//                           ),
//                           child: Hero(
//                             tag: isAddEdit != null
//                                 ? 'photos0'
//                                 : i > 3
//                                     ? 'image3'
//                                     : 'image$i',
//                             child: InteractiveViewer(
//                               child: images[i].contains('https://')
//                                   ? Util.cachedNetWorkImage(
//                                       imageUrl: images[i],
//                                       boxFit: AppSize.boxFitContain)
//                                   : Util.fileImage(
//                                       images[i],
//                                       fit: AppSize.boxFitContain,
//                                     ),
//                             ),
//                           ),
//                         ),
//                   ],
//                 ),
//               ),
//               AnimatedSwitcher(
//                 duration: const Duration(milliseconds: 200),
//                 child: controller.isShowTop.value
//                     ? Container(
//                         color: Colors.black,
//                         padding: EdgeInsets.only(
//                             top: MediaQuery.of(context).padding.top),
//                         height: 40 + MediaQuery.of(context).padding.top,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             BackButton(
//                               color: Colors.white,
//                               onPressed: () {
//                                 controller.isShowTop = true.obs;
//                                 Get.back();
//                               },
//                             ),
//                             Text(
//                               '${controller.currentIndex.value + 1} ${'of'.tr} ${images.length}',
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 saveImage(
//                                     image:
//                                         images[controller.currentIndex.value]);
//                               },
//                               child: Row(
//                                 children: [
//                                   const Icon(
//                                     Icons.file_download,
//                                     color: Colors.white,
//                                   ),
//                                   const SizedBox(
//                                     width: 5.0,
//                                   ),
//                                   Text(
//                                     'save'.tr.capitalize!,
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 10,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     : const SizedBox(),
//               ),
//               Positioned(
//                 bottom: 0,
//                 left: 0,
//                 right: 0,
//                 child: AnimatedSwitcher(
//                   duration: const Duration(milliseconds: 200),
//                   child: controller.isShowTop.value
//                       ? Container(
//                           height: 30 + MediaQuery.of(context).padding.bottom,
//                           color: Colors.black,
//                           alignment: Alignment.center,
//                           child: AnimatedSmoothIndicator(
//                             activeIndex: controller.currentIndex.value,
//                             count: isNetwork ? images.length : images.length,
//                             effect: const ExpandingDotsEffect(
//                               dotHeight: 8,
//                               dotWidth: 8,
//                               spacing: 5,
//                               dotColor: Colors.white,
//                               activeDotColor: Colors.black45,
//                             ),
//                           ),
//                         )
//                       : const SizedBox(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ViewImageController extends GetxController {
//   var currentIndex = 0.obs;
//   var isShowTop = true.obs;
//   var pagingEnable = true.obs;

//   onChangeShowTop() {
//     isShowTop(!isShowTop.value);
//   }

//   onSwiped(int index) {
//     currentIndex.value = index;
//   }
// }
