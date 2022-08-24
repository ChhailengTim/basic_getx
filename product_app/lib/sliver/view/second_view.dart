import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoButton(
            color: Colors.amber,
            child: const Text('Alert ME'),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: theDialog,
              );
            },
          ),
        ),
      ),
    );
  }
}

get theDialog => (BuildContext context) => CupertinoAlertDialog(
      title: const Text('Flutter Alert'),
      content: const Text("data"),
      actions: [
        CupertinoDialogAction(
          child: const Text('Ok'),
          onPressed: () {
            Get.back();
          },
        ),
        CupertinoDialogAction(
          child: const Text('Cancel'),
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
