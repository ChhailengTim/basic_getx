import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/switch_map/view/container_card.dart';

class SwitchMMController extends GetxController {
  List<Map<String, dynamic>> widgetCard = [
    {
      'name': 'Home',
      'widget': const ContainerCard(
        title: 'First',
        icon: Icons.person,
      ),
    },
    {
      'name': 'Setting',
      'widget': const ContainerCard(
        title: 'Second',
        icon: Icons.favorite,
      ),
    },
    {
      'name': 'Find',
      'widget': const ContainerCard(
        title: 'Third',
        icon: Icons.thumb_down,
      ),
    },
  ];
}
