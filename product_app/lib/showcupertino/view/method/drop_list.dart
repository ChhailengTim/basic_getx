import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/showcupertino/controller/showcupertio_controller.dart';

final showController = Get.put(ShowController());
Container dropList() {
  return Container(
    color: const Color.fromARGB(31, 88, 83, 83),
    child: DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        value: showController.seletedListlocat,
        items: showController.listLocat
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                ),
              ),
            )
            .toList(),
        onChanged: (item) => showController.seletedListlocat = item.toString()),
  );
}
