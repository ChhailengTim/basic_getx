import 'package:flutter/material.dart';

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
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Center(
                        child: Text(e.value),
                      ),
                    ),
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
