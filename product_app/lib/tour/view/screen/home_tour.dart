import 'package:flutter/material.dart';
import 'package:product_app/tour/view/widget/widgets/custom_scaffold.dart';

import '../widget/widgets/search_bar.dart';

class HomeTourScreen extends StatelessWidget {
  const HomeTourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        titleWidget: SearchTextField(
          hint: 'Find here',
        ).build(),
        body: Column(
          children: [
            SizedBox(
              width: 82,
              height: 82,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/mini_app/tour_test/province/phnom_penh .jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'សៀមរាប',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
