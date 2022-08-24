import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliverScroll extends StatelessWidget {
  const SliverScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: const [
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                  Box(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.amber,
    );
  }
}
