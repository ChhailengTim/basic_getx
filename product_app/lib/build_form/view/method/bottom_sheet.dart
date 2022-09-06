import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet {
  CustomBottomSheet._();
  static final instance = CustomBottomSheet._();
  factory CustomBottomSheet() => instance;

  Future myModalSheet({
    bool isScrollController = false,
    Widget? smallChild,
    Widget? childDrag,
  }) =>
      Get.bottomSheet(
        smallChild != null
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 45,
                        height: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      smallChild
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
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        childDrag!
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
        isScrollControlled: isScrollController,
      );
}
