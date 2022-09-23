import 'package:flutter/material.dart';
import 'package:get/get.dart';

Center circularProgressIndicator() => const Center(
      child: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 1.5,
          backgroundColor: Colors.transparent,
          color: Colors.grey,
        ),
      ),
    );

Future<void> openLoading() async =>
    await Get.dialog(circularProgressIndicator(), barrierDismissible: false);

Future<void> closeLoading() async => Get.close(0);
