import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/listmap_switch_case/controller/switch_controller.dart';

class ListmapSwtichScreeen extends StatelessWidget {
  const ListmapSwtichScreeen({Key? key, this.i}) : super(key: key);
  final int? i;

  @override
  Widget build(BuildContext context) {
    final switchController = Get.put(SwitchController());
    return Scaffold(
      appBar: AppBar(
        title: Text('${switchController.listSwitch[i!]['name']}'),
      ),
      body: Hero(
        tag: '${switchController.listSwitch[i!]['name']}',
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('${switchController.listSwitch[i!]['asset']}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
