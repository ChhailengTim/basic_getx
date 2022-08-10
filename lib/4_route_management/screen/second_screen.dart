import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Home'),
            ),
          ),
        ),
      ),
    );
  }
}
