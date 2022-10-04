import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchTextField {
  final String hint;
  final Function(String)? onTypeEnd;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  Duration searchDuration = const Duration(milliseconds: 1000);
  SearchTextField({
    required this.hint,
    this.onTypeEnd,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
  });

  static Timer? _debouncer;
  void _debounce(VoidCallback callback, {Duration? duration}) {
    if (_debouncer != null) {
      _debouncer!.cancel();
    }
    _debouncer = Timer(duration ?? searchDuration, callback);
  }

  RxBool isClear = false.obs;
  final controller = TextEditingController();

  Widget build() {
    controller.addListener(() {
      controller.text != '' ? isClear(true) : isClear(false);
    });
    return SizedBox(
      height: 45,
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          fillColor: Colors.black12,
          hintText: hint,
          suffixIcon: suffixIcon ??
              Obx(
                () => IconButton(
                  onPressed: isClear.value
                      ? () {
                          if (onTypeEnd != null) {
                            _debounce(() {
                              onTypeEnd!('');
                            }, duration: const Duration(milliseconds: 0));
                          }
                          controller.text = '';
                        }
                      : null,
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    isClear.value ? Icons.clear : Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 0,
            left: 10,
          ),
        ),
        style: const TextStyle(fontSize: 14, color: Colors.black),
        onChanged: (text) {
          if (onTypeEnd != null) {
            _debounce(() {
              onTypeEnd!(text);
            });
          }
        },
        keyboardType: keyboardType,
      ),
    );
  }
}
