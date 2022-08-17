import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    Key? key,
    this.title,
    this.price,
  }) : super(key: key);
  final String? title;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 40,
          left: 20,
          right: 20,
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
            const Spacer(),
            Text(
              price ?? 'non-price',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
