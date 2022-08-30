// import 'package:flutter/material.dart';

// class ScreenLists extends StatelessWidget {
//   const ScreenLists({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<String> type = [
//       'ទំនាក់ទំនង',
//       'ក្លាយជាអ្នកលក់',
//       'ក្លាយជាអ្នកបើកបរ',
//       'Rate',
//       'ដាក់កន្លែងគេង Hotel',
//       'ក្លាយជាអ្នកលក់អចលនទ្រព្យ',
//     ];
//     data:
//     [
//       {'asd': []}
//     ];
//     return Scaffold(
//       appBar: AppBar(),
//       body: SafeArea(
//         child: Column(
//           children: [
//             GridView.builder(
//               itemCount: type.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 mainAxisExtent: 4,
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 5,
//                 crossAxisSpacing: 5,
//               ),
//               itemBuilder: (context, index) {
//                 return Column(
//                       children: [
//                         const CircleAvatar(
//                           backgroundColor: Colors.black12,
//                           radius: 40,
//                           child: Icon(
//                             Icons.face,
//                             color: Colors.black,
//                           ),
//                         ),
//                         Text(e.value),
//                       ],
//                     );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
