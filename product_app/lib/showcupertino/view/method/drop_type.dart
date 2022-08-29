import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/showcupertino/controller/showcupertio_controller.dart';

final showController = Get.put(ShowController());
Container dropType() {
  return Container(
    color: const Color.fromARGB(31, 88, 83, 83),
    child: DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        value: showController.seletedType,
        items: showController.listType
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                ),
              ),
            )
            .toList(),
        onChanged: (e) => showController.seletedType = e.toString()),
  );
}
