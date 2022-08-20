import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: const [
              TextCard(
                title: 'គម្រោង',
                icon: Icons.expand_more_outlined,
              ),
              SizedBox(
                height: 20,
              ),
              TextCard(
                title: 'Agency',
                icon: Icons.expand_more_outlined,
              ),
              SizedBox(
                height: 20,
              ),
              TextCard(
                title: 'Status',
                icon: Icons.expand_more_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({
    Key? key,
    this.title,
    this.price,
    this.icon,
  }) : super(key: key);
  final String? title;
  final String? price;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 30,
          right: 30,
        ),
        child: Row(
          children: [
            Text(
              title ?? 'non-title',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
            ),
            // const Spacer(),
            // Text(
            //   price ?? 'non-price',
            //   style: Theme.of(context).textTheme.titleMedium!.copyWith(
            //         color: Colors.black,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 20,
            //       ),
            // ),
            const Spacer(),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
