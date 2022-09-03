import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/switch_map/controller/switch_map_controller.dart';
import 'package:product_app/switch_map/view/screen/screen_render.dart';

class SwitchMapScreen extends StatelessWidget {
  const SwitchMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final switchMMController = Get.put(SwitchMMController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwtichMap'),
      ),
      body: Column(
        children: [
          for (int i = 0; i < switchMMController.widgetCard.length; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${switchMMController.widgetCard[i]['name']}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                InkWell(
                  onTap: () {
                    switch (i) {
                      case 0:
                        Get.to(() => FirstScreen(
                              i: i,
                            ));
                        break;
                      case 1:
                        Get.to(() => SecondScreen(
                              i: i,
                            ));
                        break;
                      case 2:
                        Get.to(() => ThirdScreen(
                              i: i,
                            ));
                        break;

                      default:
                        'try to specifice content';
                    }
                  },
                  child: Container(
                    child: switchMMController.widgetCard[i]['widget'],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
