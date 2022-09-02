import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> mymodalSheet(
        {bool isScrollController = false,
        double? height,
        Widget? child,
        Widget? childDrag}) async =>
    await Get.bottomSheet(
      childDrag == null
          ? Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: 90,
                      height: 8,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    child!
                  ],
                ),
              ),
            )
          : DraggableScrollableSheet(
              initialChildSize: 0.6,
              maxChildSize: 0.9,
              expand: false,
              builder: (_, scrollController) => Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 45,
                        height: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      childDrag
                    ],
                  ),
                ),
              ),
            ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      backgroundColor: Colors.white,
    );
