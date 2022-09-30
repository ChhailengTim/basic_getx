import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchTextField {
  final Function(String)? onChanged;
  final Function(String)? onTypeEnd;

  SearchTextField({
    this.onTypeEnd,
    this.onChanged,
  });
  final textinput = TextEditingController();
  RxBool isClear = false.obs;
  Duration searchDuration = const Duration(milliseconds: 1000);
  static Timer? _debouncer;
  void _debounce(VoidCallback callback, {Duration? duration}) {
    if (_debouncer != null) {
      _debouncer!.cancel();
    }
    _debouncer = Timer(duration ?? searchDuration, callback);
  }

  Widget build() {
    textinput.addListener(() {
      textinput.text != '' ? isClear(true) : isClear(false);
    });
    return SizedBox(
      height: 45,
      child: TextField(
        controller: textinput,
        cursorColor: Colors.amber,
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search',
          suffixIcon: Icon(Icons.search),
        ),
        onChanged: (text) {
          if (onTypeEnd != null) {
            _debounce(() {
              onTypeEnd!(text);
            });
          }
        },
      ),
    );
  }
}
