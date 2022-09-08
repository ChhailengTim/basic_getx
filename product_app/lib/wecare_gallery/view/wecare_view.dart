import 'package:flutter/material.dart';
import 'package:product_app/wecare_gallery/view/wecar_gallery.dart';

class WecareView extends StatelessWidget {
  const WecareView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          ViewImageFullScreen(
            images: [
              'assets/images/cat1.jpg',
              'assets/images/cat3.jpg',
            ],
            index: 2,
            isNetwork: false,
          ),
          Text('data'),
        ],
      ),
    );
  }
}
