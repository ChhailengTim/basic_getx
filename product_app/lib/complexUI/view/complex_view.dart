import 'package:flutter/material.dart';

class ComplexView extends StatelessWidget {
  const ComplexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.list),
        ),
        title: const Text('Complex UI'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Get.to(() => const DrawerScreen());
            },
            child: const MyImage(),
          ),
          Transform.translate(
            offset: const Offset(64, 32),
            child: const MyImage(),
          ),
          Transform.scale(
            scale: 0.5,
            child: const MyImage(),
          ),
          Transform.rotate(
            angle: 3.14 / 2,
            child: const MyImage(),
          ),
          Transform(
            transform: Matrix4.identity()..translate(128.0),
            child: const MyImage(),
          ),
        ],
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/cat1.jpg',
          width: 100,
        ),
        const Positioned(
          bottom: 16,
          left: 16,
          child: Text('Bagheera'),
        ),
      ],
    );
  }
}
