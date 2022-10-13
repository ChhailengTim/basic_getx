// class AttractionWidgets extends AppText {
//   AttractionWidgets._();
//   static final instance = AttractionWidgets._();
//   factory AttractionWidgets() => instance;

//   List<ProvinceModel> listPro = listProvice;
//   List<Component> listComp = listComponent;

//   //shimer loading attraction
//   Widget attractionShimmer({
//     double? paddingTop,
//     double? paddingBottom,
//     double? paddingLeft,
//     double? paddingRight,
//     double? width,
//     double? height,
//   }) =>
//       Padding(
//         padding: EdgeInsets.only(
//           top: paddingTop ?? 0,
//           bottom: paddingBottom ?? 0,
//           left: paddingLeft ?? 0,
//           right: paddingRight ?? 0,
//         ),
//         child: ShimmerLoadingWidget(
//           width: width ?? 0,
//           height: height ?? 0,
//           shapeBorder: RoundedRectangleBorder(borderRadius: borderRadius15),
//         ).rectangular(),
//       );

//   SingleChildScrollView provinceComponent({
//     //required List<AttractionModel> listAttraction,
//     int? selectedIndex,
//     void Function(int)? onClicked,
//   }) {
//     RxInt selected = selectedIndex == null ? 100.obs : selectedIndex.obs;
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       physics: const BouncingScrollPhysics(),
//       child: Row(
//         children: [
//           for (int index = 0; index < listPro.length; index++)
//             Padding(
//               padding: EdgeInsets.only(
//                 left: AppSize().s8,
//                 top: AppSize().s8,
//               ),
//               child: InkWell(
//                 onTap: () {
//                   if (onClicked != null) {
//                     onClicked(listPro[index].id!);
//                   }
//                   selected(listPro[index].id);
//                 },
//                 child: Obx(
//                   () => Stack(
//                     children: [
//                       SizedBox(
//                         width: AppSize().s80,
//                         height: AppSize().s80,
//                         child: DecoratedBox(
//                           decoration: BoxDecoration(
//                             borderRadius: borderRadius5,
//                             image: DecorationImage(
//                               image:
//                                   AssetImage('${listPro[index].provinceImage}'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: AppSize().s80,
//                         height: AppSize().s80,
//                         decoration: BoxDecoration(
//                           borderRadius: borderRadius5,
//                           border: selected.value == index + 1
//                               ? Border.all(color: AppColors().primary, width: 3)
//                               : Border.all(color: Colors.transparent),
//                           gradient: LinearGradient(
//                             begin: Alignment.center,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Colors.transparent,
//                               AppColors().grey,
//                             ],
//                           ),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: AppSize().s2,
//                                 right: AppSize().s2,
//                               ),
//                               child: Text(
//                                 '${listPro[index].provinceName}',
//                                 style: getRegularStyle(
//                                   color: AppColors().white,
//                                   fontSize: AppSize().s12,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: AppSize().s5,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//   //Attraction text
//   Padding attractionTitle({String? title}) => Padding(
//         padding: EdgeInsets.only(
//           top: AppSize().s8,
//           left: AppSize().s8,
//           bottom: AppSize().s8,
//         ),
//         child: Text(
//           title ?? features,
//           style: getBoldStyle(
//             color: AppColors().black800,
//             fontSize: AppSize().s12,
//           ),
//         ),
//       );

//   // Feature
//   Widget featureAttraction({
//     required List<AttractionModel> listAttraction,
//   }) =>
//       listAttraction.isEmpty
//           ? SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               physics: const BouncingScrollPhysics(),
//               child: Row(
//                 children: [
//                   for (int i = 0; i < 10; i++)
//                     SizedBox(
//                       width: AppSize().s180,
//                       height: AppSize().s225,
//                       child: attractionShimmer(
//                         paddingLeft: s8,
//                       ),
//                     ),
//                 ],
//               ),
//             )
//           : SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               physics: const BouncingScrollPhysics(),
//               child: Row(
//                 children: [
//                   for (int i = 0; i < listAttraction.length; i++)
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: AppSize().s8,
//                       ),
//                       child: InkWell(
//                         onTap: () {
//                           routeToNamed(
//                               routeName: RouteNames().attractionDetail,
//                               arguments: listAttraction[i]);
//                         },
//                         child: Container(
//                           width: AppSize().s180,
//                           height: AppSize().s225,
//                           decoration: BoxDecoration(
//                             borderRadius: borderRadius15,
//                             color: AppColors().white,
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.only(
//                               top: AppSize().s4,
//                               left: AppSize().s4,
//                               right: AppSize().s4,
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: AppSize().s180,
//                                   height: AppSize().s155,
//                                   child: ClipRRect(
//                                       borderRadius: borderRadius15,
//                                       child: listAttraction[i]
//                                               .image!
//                                               .contains('https')
//                                           ? imageCached(listAttraction[i].image)
//                                           : Image.asset(
//                                               listAttraction[i].image!)),
//                                 ),
//                                 SizedBox(
//                                   height: AppSize().s10,
//                                 ),
//                                 Text(
//                                   '${listAttraction[i].title}',
//                                   style: getBoldStyle(
//                                     color: AppColors().black800,
//                                     fontSize: AppSize().s12,
//                                   ),
//                                 ),
//                                 SizedBox(height: AppSize().s5),
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       Icons.location_pin,
//                                       size: AppSize().s14,
//                                       color: Colors.red,
//                                     ),
//                                     Text(
//                                       'Mondulkiri',
//                                       style: getRegularStyle(
//                                         color: AppColors().black800,
//                                         fontSize: AppSize().s12,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             );

//   //Recent attractions
//   Widget recentAttraction({
//     required List<AttractionModel> listAttraction,
//     GestureTapCallback? onTap,
//   }) =>
//       listAttraction.isEmpty
//           ? SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               physics: const BouncingScrollPhysics(),
//               child: Row(
//                 children: [
//                   for (int i = 0; i < 10; i++)
//                     SizedBox(
//                       width: AppSize().s180,
//                       height: AppSize().s200,
//                       child: attractionShimmer(
//                         paddingLeft: s8,
//                       ),
//                     ),
//                 ],
//               ),
//             )
//           : SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               physics: const BouncingScrollPhysics(),
//               child: Row(
//                 children: [
//                   for (int i = 0; i < listAttraction.length - 5; i++)
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: AppSize().s8,
//                       ),
//                       child: InkWell(
//                         onTap: () {
//                           routeToNamed(
//                               routeName: RouteNames().attractionDetail,
//                               arguments: listAttraction[i]);
//                         },
//                         child: Stack(
//                           children: [
//                             SizedBox(
//                               width: AppSize().s180,
//                               height: AppSize().s200,
//                               child: ClipRRect(
//                                 borderRadius: borderRadius15,
//                                 child: listAttraction[i]
//                                         .photos!
//                                         .contains('https')
//                                     ? imageCached(listAttraction[i].photos)
//                                     : Image.asset(listAttraction[i].photos!),
//                               ),
//                             ),
//                             SizedBox(
//                               width: AppSize().s180,
//                               height: AppSize().s200,
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   gradient: const LinearGradient(
//                                     begin: Alignment.center,
//                                     end: Alignment.bottomCenter,
//                                     colors: [
//                                       Colors.transparent,
//                                       Colors.black,
//                                     ],
//                                   ),
//                                   borderRadius: borderRadius15,
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                     bottom: AppSize().s8,
//                                     left: AppSize().s8,
//                                   ),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Text(
//                                         '${listAttraction[i].title}',
//                                         style: getBoldStyle(
//                                           color: AppColors().white,
//                                           fontSize: AppSize().s12,
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 5,
//                                       ),
//                                       Row(
//                                         children: [
//                                           Icon(
//                                             Icons.location_pin,
//                                             size: AppSize().s14,
//                                             color: Colors.white,
//                                           ),
//                                           Text(
//                                             'Mondulkiri',
//                                             style: getRegularStyle(
//                                               color: AppColors().white,
//                                               fontSize: AppSize().s12,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             );

//   //List
//   Widget listComponents({
//     required List<AttractionModel> listAttraction,
//   }) =>
//       listAttraction.isEmpty
//           ? Column(
//               children: [
//                 for (int i = 0; i < 10; i++)
//                   Container(
//                     width: AppSize().appWidth,
//                     height: AppSize().s160,
//                     decoration: BoxDecoration(
//                       borderRadius: AppSize().borderRadius15,
//                     ),
//                     child: attractionShimmer(),
//                   ),
//               ],
//             )
//           : Padding(
//               padding: EdgeInsets.only(
//                 left: AppSize().s8,
//                 right: AppSize().s8,
//               ),
//               child: Column(
//                 children: [
//                   for (int i = 0; i < listAttraction.length; i++)
//                     Column(
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             print('object');
//                           },
//                           child: Container(
//                             width: AppSize().appWidth,
//                             height: AppSize().s160,
//                             decoration: BoxDecoration(
//                               borderRadius: AppSize().borderRadius15,
//                               color: AppColors().white,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                 vertical: AppSize().s4,
//                                 horizontal: AppSize().s4,
//                               ),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                     width: AppSize().s155,
//                                     height: AppSize().s155,
//                                     child: ClipRRect(
//                                         borderRadius: borderRadius15,
//                                         child: imageCached(
//                                             listAttraction[i].image)),
//                                   ),
//                                   SizedBox(
//                                     width: AppSize().s8,
//                                   ),
//                                   Expanded(
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceEvenly,
//                                       children: [
//                                         Text(
//                                           '${listAttraction[i].title}',
//                                           style: getBoldStyle(
//                                             color: AppColors().black800,
//                                             fontSize: AppSize().s16,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: AppSize().s8,
//                                         ),
//                                         Text(
//                                           '${listAttraction[i].description}',
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,
//                                           softWrap: false,
//                                         ),
//                                         SizedBox(
//                                           height: AppSize().s8,
//                                         ),
//                                         Row(
//                                           children: [
//                                             Icon(
//                                               Icons.location_pin,
//                                               size: AppSize().s14,
//                                             ),
//                                             Text(
//                                               'Mondulkiri',
//                                               style: getRegularStyle(
//                                                 color: AppColors().black800,
//                                                 fontSize: AppSize().s12,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: AppSize().s8,
//                         ),
//                       ],
//                     ),
//                 ],
//               ),
//             );

//   //Attraction Detail
//   SliverAppBar sliverAppBar() {
//     return SliverAppBar(
//       leading: AppButtonWidget().backButton(),
//       stretch: true,
//       pinned: true,
//       backgroundColor: AppColors().background,
//       expandedHeight: appHeight / 2,
//       flexibleSpace: imageBackground(),
//       bottom: profileComponent(),
//     );
//   }

//   PreferredSize profileComponent() {
//     final attractionModel = Get.arguments as AttractionModel;
//     return PreferredSize(
//       preferredSize: const Size.fromHeight(14),
//       child: Container(
//         width: double.infinity,
//         height: AppSize().s70,
//         padding: EdgeInsets.only(
//           top: AppSize().s5,
//           bottom: AppSize().s10,
//         ),
//         decoration: BoxDecoration(
//           color: AppColors().background,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(AppSize().s20),
//             topRight: Radius.circular(AppSize().s20),
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.only(
//             left: AppSize().s8,
//             top: AppSize().s5,
//           ),
//           child: Row(
//             children: [
//               SizedBox(
//                 height: 50,
//                 width: 50,
//                 child: ClipRRect(
//                   borderRadius: borderRadius100,
//                   child: attractionModel.photos != null
//                       ? imageCached(attractionModel.photos)
//                       : imageCached(attractionModel.image),
//                 ),
//               ),
//               SizedBox(
//                 width: AppSize().s8,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     '${attractionModel.title}',
//                     style: getBoldStyle(
//                       color: AppColors().black800,
//                       fontSize: AppSize().s14,
//                     ),
//                   ),
//                   Text(
//                     'Mondulkiri',
//                     style: getRegularStyle(
//                       color: AppColors().black800,
//                       fontSize: AppSize().s12,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   FlexibleSpaceBar imageBackground() {
//     final attractionModel = Get.arguments as AttractionModel;
//     return FlexibleSpaceBar(
//       background: attractionModel.photos != null
//           ? imageCached(attractionModel.photos)
//           : imageCached(attractionModel.image),
//     );
//   }

//   SliverToBoxAdapter sliverDetailComponent({
//     required List<AttractionModel> listAttraction,
//   }) {
//     RxInt selected = 0.obs;
//     return SliverToBoxAdapter(
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             color: AppColors().background,
//             child: Column(
//               children: [
//                 Divider(
//                   color: AppColors().lightGrey,
//                   thickness: AppSize().s1,
//                   height: AppSize().s1,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(
//                     AppSize().s8,
//                   ),
//                   child: AppButtonWidget().tabButtonAttraction(
//                     items: [
//                       {
//                         'label': AppText().about,
//                         'value': EnumAttractionTab.about.value
//                       },
//                       {
//                         'label': AppText().contact,
//                         'value': EnumAttractionTab.contact.value
//                       },
//                       {
//                         'label': AppText().location,
//                         'value': EnumAttractionTab.location.value
//                       },
//                       {
//                         'label': AppText().photos,
//                         'value': EnumAttractionTab.photos.value
//                       },
//                       {
//                         'label': AppText().videos,
//                         'value': EnumAttractionTab.videos.value
//                       },
//                       {
//                         'label': AppText().price,
//                         'value': EnumAttractionTab.price.value
//                       }
//                     ],
//                     selectedIndex: EnumAttractionTab.about.value,
//                     onClicked: (value) {
//                       // selected = value.obs;
//                       selected(value);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             color: AppColors().lightGrey,
//             thickness: AppSize().s1,
//             height: AppSize().s1,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Obx(
//               () => Column(
//                 children: [
//                   if (EnumAttractionTab.about.value == selected.value)
//                     AttractionWidgets().aboutComponents(),
//                   if (EnumAttractionTab.contact.value == selected.value)
//                     AttractionWidgets().contactComponents(),
//                   if (EnumAttractionTab.location.value == selected.value)
//                     AttractionWidgets().locationComponents(),
//                   if (EnumAttractionTab.photos.value == selected.value)
//                     AttractionWidgets()
//                         .photosComponents(listAttraction: listAttraction),
//                   if (EnumAttractionTab.videos.value == selected.value)
//                     AttractionWidgets().videosComponents(),
//                   if (EnumAttractionTab.price.value == selected.value)
//                     AttractionWidgets()
//                         .pricesComponents(listAttraction: listAttraction),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Text aboutComponents() => const Text(
//       'Paradise Resort ជារមណីយដ្ឋានប្រណិតដែលមានទេសភាពស្រស់ស្អាតខ្យល់អាកាស បរិសុទ្ធ និង ហ៊ុំព័ទ្ធដោយភ្នំ។ មាន​ចម្ងាយ​ប្រហែល ៧គីឡូម៉ែត្រ​​​​​ ពី​រង្វង់​មូល​គោព្រៃ។  រមណីយដ្ឋាន​ពូតាំង ស្ថិត​នៅ​ផ្លូវ​ពូតាំង ភូមិ​ពូតាំង សង្កាត់​រំនា ក្រុង​សែនមនោរម្យ ខេត្ត​មណ្ឌលគិរី។លើសពីនេះទៅទៀតបងប្អូន អាចរៀបចំអាំងសាច់់ ញាំអាហារពេលល្ងាចជាមួយមិត្តភក្តិ ​ក្រុមគ្រួសារ និង​ គយគន់ទេសភាពថ្ងៃលិចនៅ តាមជើងភ្នំ រួមជាមួយខ្យល់បក់ស្លឹកឈើ ទិដ្ឋភាព នេះ​​​​អាចធ្វើឱ្យអ្នកបំភ្លេចទីក្រុង​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​ដែល អ្នកធ្លាប់ស្នាក់នៅនិង ចង់រស់នៅទីកន្លែងនេះ ជារៀងរហូត។​​​​​');
//   Column contactComponents() => Column(
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: AppSize().s20,
//                 child: const Icon(Icons.phone),
//               ),
//               SizedBox(width: AppSize().s8),
//               Text(
//                 '(+855)15456706 ,(+855)60800817',
//                 style: getRegularStyle(
//                     fontSize: AppSize().s12, color: AppColors().primary),
//               ),
//             ],
//           ),
//           SizedBox(height: AppSize().s8),
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: AppSize().s20,
//                 child: const Icon(Icons.facebook),
//               ),
//               SizedBox(width: AppSize().s10),
//               Text(
//                 'Paradise Resort',
//                 style: getBoldStyle(
//                   fontSize: AppSize().s12,
//                   color: AppColors().primary,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );
//   Column locationComponents() => Column(
//         children: [
//           const Text(
//               'រមណីយដ្ឋាន​ពូតាំង ស្ថិត​នៅ​ផ្លូវ​ពូតាំង ភូមិ​ពូតាំង សង្កាត់​រំនា ក្រុង​សែនមនោរម្យ ខេត្ត​មណ្ឌលគិរី។'),
//           SizedBox(height: AppSize().s8),
//           googleMap(
//             latitude: '11.5564',
//             longitude: '104.9282',
//           ),
//         ],
//       );
//   GridView photosComponents({
//     required List<AttractionModel> listAttraction,
//   }) =>
//       GridView.builder(
//         padding: EdgeInsets.zero,
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: AppSize().s8,
//           crossAxisSpacing: AppSize().s8,
//           childAspectRatio: AppSize().s1,
//         ),
//         itemCount: listAttraction.length,
//         itemBuilder: (context, index) => ClipRRect(
//           borderRadius: borderRadius15,
//           child: listAttraction[index].photos != null
//               ? imageCached(listAttraction[index].photos)
//               : imageCached(listAttraction[index].image),
//         ),
//       );
//   GridView videosComponents() => GridView.builder(
//         padding: EdgeInsets.zero,
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: AppSize().s8,
//           crossAxisSpacing: AppSize().s8,
//           childAspectRatio: AppSize().s1_5,
//         ),
//         itemCount: listComp.length,
//         itemBuilder: (context, index) => DecoratedBox(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(listComp[index].componentImage ??
//                   "https://media-cdn.tripadvisor.com/media/photo-s/11/98/37/b4/nice-view.jpg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       );
//   GridView pricesComponents({
//     required List<AttractionModel> listAttraction,
//   }) =>
//       GridView.builder(
//         padding: EdgeInsets.zero,
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: AppSize().s8,
//           crossAxisSpacing: AppSize().s8,
//           childAspectRatio: AppSize().s0_75,
//         ),
//         itemCount: listAttraction.length,
//         itemBuilder: (context, index) => Container(
//           decoration: BoxDecoration(
//             color: AppColors().white,
//             borderRadius: AppSize().borderRadius15,
//             boxShadow: [
//               BoxShadow(
//                 color: AppColors().lightGrey,
//                 spreadRadius: 0,
//                 blurRadius: 3,
//                 offset: const Offset(0, 3), // changes position of shadow
//               ),
//             ],
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(AppSize().s5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: AppSize().s185,
//                   width: Get.width,
//                   child: ClipRRect(
//                     borderRadius: borderRadius15,
//                     child: listAttraction[index].photos != null
//                         ? imageCached(listAttraction[index].photos)
//                         : imageCached(listAttraction[index].image),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     top: AppSize().s5,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "បន្ទប់គ្រែមួយ",
//                         style: getBoldStyle(
//                           fontSize: AppSize().s15,
//                           color: AppColors().black800,
//                         ),
//                       ),
//                       Text(
//                         "\$15.00",
//                         style: getBoldStyle(
//                           fontSize: AppSize().s15,
//                           color: AppColors().primary,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
// }
