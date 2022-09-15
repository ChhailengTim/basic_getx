import 'package:flutter/material.dart';
import 'package:product_app/filter/view/test2.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen'),
      ),
      body: const AccumulatorWidget(),
    );
  }
}
