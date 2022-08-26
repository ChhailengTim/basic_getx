import 'package:flutter/material.dart';

class ChipList extends StatelessWidget {
  ChipList({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;

  final List<String> chipList = [
    'All',
    'Pending',
    'Approved',
    'Rejected',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: chipList
            .asMap()
            .entries
            .map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ActionChip(
                  label: Text(
                    e.value,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    e.value;
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
