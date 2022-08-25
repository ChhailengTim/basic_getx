import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data_view.dart';

class ChipScreen extends StatelessWidget {
  const ChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> chipList = [
      'Hello',
      'Hi',
      'How',
      'House',
      'Home',
      'Hello',
      'Hi',
      'How',
      'House',
      'Home',
    ];
    List<String> dataList = [
      'Home',
      'Find',
      'Discover',
      'Profile',
      'Search',
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: chipList
                  .asMap()
                  .entries
                  .map(
                    (e) => Chip(
                      label: Text(e.value),
                    ),
                  )
                  .toList(),
            ),
          ),
          Column(
            children: dataList
                .asMap()
                .entries
                .map(
                  (e) => ContainerWidget(
                    onTap: () {
                      Get.to(() => DataScreen(
                            num: e.key,
                          ));
                    },
                    index: e.value,
                  ),
                )
                .toList(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: chipList
                  .asMap()
                  .entries
                  .map(
                    (e) => Chip(
                      label: Text(
                        e.key.toString(),
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

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.index,
    this.onTap,
  }) : super(key: key);
  final String? index;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          child: Center(
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}
