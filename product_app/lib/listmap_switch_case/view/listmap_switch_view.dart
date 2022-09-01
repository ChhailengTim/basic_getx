import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/listmap_switch_case/controller/switch_controller.dart';
import 'package:product_app/listmap_switch_case/view/listmap_switch_hero.dart';

class SwitchCaseScreen extends StatelessWidget {
  const SwitchCaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final switchController = Get.put(SwitchController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Case'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              for (int index = 0;
                  index < switchController.listSwitch.length;
                  index++)
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Get.to(
                              () => ListmapSwtichScreeen(
                                i: index,
                              ),
                            );
                            break;
                          case 1:
                            Get.to(() => ListmapSwtichScreeen(
                                  i: index,
                                ));
                            break;
                          case 2:
                            Get.to(() => ListmapSwtichScreeen(
                                  i: index,
                                ));
                            break;
                          case 3:
                            Get.to(() => ListmapSwtichScreeen(
                                  i: index,
                                ));
                            break;
                          case 4:
                            Get.to(() => ListmapSwtichScreeen(
                                  i: index,
                                ));
                            break;
                          case 5:
                            Get.to(() => ListmapSwtichScreeen(
                                  i: index,
                                ));
                            break;
                        }
                      },
                      child: Hero(
                        tag: '${switchController.listSwitch[index]['name']}',
                        child: Card(
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    '${switchController.listSwitch[index]['asset']}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '${switchController.listSwitch[index]['name']}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
