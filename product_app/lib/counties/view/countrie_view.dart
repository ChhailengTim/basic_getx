import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_app/counties/model/countrie_model_data.dart';

class HelloCountrie extends StatefulWidget {
  const HelloCountrie({super.key});

  @override
  State<HelloCountrie> createState() => _HelloCountrieState();
}

class _HelloCountrieState extends State<HelloCountrie> {
  List cn = <CountrieModelData>[];
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('lib/counties/json/countrie_data.json');
    final data = await json.decode(response);
    setState(() {
      cn = data['CountrieModelData'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: Obx(() => ListView.builder(
      //     itemCount: countrieControllerData.listCountrieData.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text(
      //             '${countrieControllerData.listCountrieData[index].name}'),
      //       );
      //     })),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            debugPrint(cn.toString());
          });
        },
        child: const Text('data'),
      ),
    );
  }
}
