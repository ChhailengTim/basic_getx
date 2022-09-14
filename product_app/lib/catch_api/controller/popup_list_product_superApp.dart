// CustomBottomSheet.instance.myModalSheet(
            //   backgrondColor: AppColors.white,
            //   isScrollController: true,
            //   childDrag: Column(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(
            //           right: AppSize.s30,
            //           top: AppSize.s28,
            //           bottom: AppSize.s28,
            //         ),
            //         child: InkWell(
            //           onTap: () {
            //             Get.back();
            //           },
            //           child: Image.asset(
            //             AppAssets.cancleIconPNG,
            //             width: AppSize.s24,
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.all(15.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               appText.location,
            //               style: getBoldStyle(
            //                   color: AppColors.black, fontSize: AppSize.s12),
            //             ),
            //             MyDropDownButton(
            //               hint: appText.phnomPenh,
            //               listItems: [
            //                 {
            //                   'label': appText.banteayMeanchey,
            //                   'value': '1',
            //                 },
            //                 {
            //                   'label': appText.battambang,
            //                   'value': '2',
            //                 },
            //                 {
            //                   'label': appText.kampongCham,
            //                   'value': '3',
            //                 },
            //                 {
            //                   'label': appText.kampongChhnang,
            //                   'value': '4',
            //                 },
            //                 {
            //                   'label': appText.kampongSpeu,
            //                   'value': '5',
            //                 },
            //                 {
            //                   'label': appText.kampongThom,
            //                   'value': '6',
            //                 },
            //                 {
            //                   'label': appText.kampot,
            //                   'value': '7',
            //                 },
            //                 {
            //                   'label': appText.kandal,
            //                   'value': '8',
            //                 },
            //                 {
            //                   'label': appText.kohKong,
            //                   'value': '9',
            //                 },
            //                 {
            //                   'label': appText.kratie,
            //                   'value': '10',
            //                 },
            //                 {
            //                   'label': appText.mondulkiri,
            //                   'value': '11',
            //                 },
            //                 {
            //                   'label': appText.phnomPenh,
            //                   'value': '12',
            //                 },
            //                 {
            //                   'label': appText.preahVihear,
            //                   'value': '13',
            //                 },
            //                 {
            //                   'label': appText.preyVeng,
            //                   'value': '14',
            //                 },
            //                 {
            //                   'label': appText.pursat,
            //                   'value': '15',
            //                 },
            //                 {
            //                   'label': appText.ratanakiri,
            //                   'value': '16',
            //                 },
            //                 {
            //                   'label': appText.siemReap,
            //                   'value': '17',
            //                 },
            //                 {
            //                   'label': appText.preahSihanouk,
            //                   'value': '18',
            //                 },
            //                 {
            //                   'label': appText.stungTreng,
            //                   'value': '19',
            //                 },
            //                 {
            //                   'label': appText.svayRieng,
            //                   'value': '20',
            //                 },
            //                 {
            //                   'label': appText.takeo,
            //                   'value': '21',
            //                 },
            //                 {
            //                   'label': appText.oddarMeanchey,
            //                   'value': '22',
            //                 },
            //                 {
            //                   'label': appText.kep,
            //                   'value': '23',
            //                 },
            //                 {
            //                   'label': appText.pailin,
            //                   'value': '24',
            //                 },
            //                 {
            //                   'label': appText.tboungKhmum,
            //                   'value': '25',
            //                 },
            //               ],
            //               onChanged: (value) {
            //                 debugPrint(value['value']);
            //               },
            //             ),
            //             const SizedBox(
            //               height: AppSize.s35,
            //             ),
            //             Text(
            //               appText.type,
            //               style: getBoldStyle(
            //                   color: AppColors.black, fontSize: AppSize.s12),
            //             ),
            //             MyDropDownButton(
            //               hint: 'ឡូតិ៍កែង',
            //               listItems: const [
            //                 {
            //                   'label': 'ឡូតិ៍កែង',
            //                   'value': '1',
            //                 },
            //                 {
            //                   'label': 'ឡូតិ៍កណ្តាល',
            //                   'value': '2',
            //                 },
            //                 {
            //                   'label': 'ឡូតិ៍មុខ',
            //                   'value': '3',
            //                 },
            //                 {
            //                   'label': 'ឡូតិ៍ក្រោយ',
            //                   'value': '4',
            //                 },
            //               ],
            //               onChanged: (value) {
            //                 debugPrint(value['value']);
            //               },
            //             ),
            //             const SizedBox(
            //               height: AppSize.s65,
            //             ),
            //             CustomButton(
            //               onTap: () {
            //                 Get.to(() => const FilterListScreen());
            //               },
            //               text: 'ច្រោះ',
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // );