import 'package:flutter/material.dart';
import 'package:product_app/chiplist/view/method/status_color.dart';

class OrderListCard extends StatelessWidget {
  const OrderListCard({
    Key? key,
    this.title,
    this.price,
    this.date,
    this.status,
    this.code,
    this.locate,
    this.typeStatus,
  }) : super(key: key);
  final String? title;
  final String? price;
  final String? date;
  final String? status;
  final String? code;
  final String? locate;
  final String? typeStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.prop24.com/5fjmok63wfrxauy3u2nefejg5e/Crop237x198'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          title ?? 'null',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                        ),
                        const Spacer(),
                        Text(
                          price ?? 'null',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          date ?? 'null',
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(status ?? 'null',
                            style: TextStyle(
                              color: statusColors(typeStatus!),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          code ?? 'null',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          locate ?? 'null',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
