import 'package:flutter/material.dart';
import 'package:product_app/custom_scaffold/view/widget/widget_render.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleWidget: const SearchTextField(),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
        ),
      ],
      body: const Center(
        child: Text('SearchBar'),
      ),
    );
  }
}
