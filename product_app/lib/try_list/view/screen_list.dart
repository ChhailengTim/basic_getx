import 'package:flutter/material.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        "id": 1,
        "name": "Leanne Graham",
        "username": "Bret",
        "email": "Sincere@april.biz",
        "address": {
          "street": "Kulas Light",
          "suite": "Apt. 556",
          "city": "Gwenborough",
          "zipcode": "92998-3874",
          "geo": {"lat": "-37.3159", "lng": "81.1496"}
        },
        "phone": "1-770-736-8031 x56442",
        "website": "hildegard.org",
        "company": {
          "name": "Romaguera-Crona",
          "catchPhrase": "Multi-layered client-server neural-net",
          "bs": "harness real-time e-markets"
        }
      },
    ];
    List<String> type = [
      'Rate',
      'ទំនាក់ទំនង',
      'ក្លាយជាអ្នកលក់',
      'ក្លាយជាអ្នកបើកបរ',
      'ដាក់កន្លែងគេង Hotel',
      'ក្លាយជាអ្នកលក់អចលនទ្រព្យ',
    ];
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  for (var item in list) Text(item['address'].toString()),
                ],
              ),
            )
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Wrap(
            //     spacing: 8.0,
            //     children: list
            //         .asMap()
            //         .entries
            //         .map(
            //           (e) => Padding(
            //             padding: const EdgeInsets.all(12.0),
            //             child: GestureDetector(
            //               onTap: () {
            //                 //Get.to(() => const ScreenLists());
            //               },
            //               child: Container(
            //                 width: Get.width * .5,
            //                 height: Get.height * .1,
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(10),
            //                   color: Colors.black12,
            //                 ),
            //                 child: Center(
            //                   child: Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(list.length.toString()),
            //                       const Icon(Icons.person),
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         )
            //         .toList(),
            //   ),
            // ),
            // Column(
            //   children: type
            //       .asMap()
            //       .entries
            //       .map(
            //         (e) => Column(
            //           children: [
            //             const CircleAvatar(
            //               backgroundColor: Colors.black12,
            //               radius: 40,
            //               child: Icon(
            //                 Icons.face,
            //                 color: Colors.black,
            //               ),
            //             ),
            //             Text(e.value),
            //           ],
            //         ),
            //       )
            //       .toList(),
            // ),
          ],
        ),
      ),
    );
  }
}
