import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> type = [
      'ទំនាក់ទំនង',
      'ក្លាយជាអ្នកលក់',
      'ក្លាយជាអ្នកបើកបរ',
      'Rate',
      'ដាក់កន្លែងគេង Hotel',
      'ក្លាយជាអ្នកលក់អចលនទ្រព្យ',
    ];
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: type
                    .asMap()
                    .entries
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: Get.width * .5,
                          height: Get.height * .1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(e.value),
                                const Icon(Icons.person),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Column(
              children: type
                  .asMap()
                  .entries
                  .map(
                    (e) => Column(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 40,
                          child: Icon(
                            Icons.face,
                            color: Colors.black,
                          ),
                        ),
                        Text(e.value),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
