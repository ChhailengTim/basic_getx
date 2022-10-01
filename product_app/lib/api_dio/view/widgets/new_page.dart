import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final calulate = Get.put(Calulate());
  final controller = TextEditingController();
  int? total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: controller,
            onChanged: (v) {
              calulate.hour = int.parse(v);
            },
            decoration: const InputDecoration(
              hintText: 'input',
            ),
          ),
          calulate.hour != 0
              ? Text(
                  '\$ ${calulate.total}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const Text('Input'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (calulate.hour <= 25) {
                  calulate.oneToTwentyt();
                } else if (calulate.hour <= 45) {
                  calulate.twentyTofourty();
                } else {
                  calulate.overIt();
                }
              });
            },
            child: const Text('Calculate'),
          ),
        ],
      ),
    );
  }
}

class Calulate extends GetxController {
  int hour = 0;
  int total = 0;
  oneToTwentyt() {
    total = hour * 8;
    return total;
  }

  twentyTofourty() {
    total = hour * 9;
    return total;
  }

  overIt() {
    total = hour * 14;
    return total;
  }
}
