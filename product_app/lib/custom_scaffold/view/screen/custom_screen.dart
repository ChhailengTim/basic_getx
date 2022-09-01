import 'package:flutter/material.dart';
import 'package:product_app/custom_scaffold/view/widget/custom_widget.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleWidget: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black12,
          hintText: 'Search',
          contentPadding:
              const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.dangerous,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.face,
            color: Colors.black,
          ),
        ),
      ],
      body: Column(
        children: const [],
      ),
    );
  }
}
