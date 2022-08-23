import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:product_app/counties/view/widgets/list_card.dart';

class HelloCountrie extends StatefulWidget {
  const HelloCountrie({super.key});

  @override
  State<HelloCountrie> createState() => _HelloCountrieState();
}

class _HelloCountrieState extends State<HelloCountrie> {
  List cn = [];
  readJson() async {
    await DefaultAssetBundle.of(context)
        .loadString('lib/counties/json/countrie_data.json')
        .then((e) {
      setState(() {
        cn = json.decode(e);
        debugPrint(cn.toString());
      });
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ListCard(
                country: cn[index]['name'],
                capital: cn[index]['capital'],
                region: cn[index]['region'],
                currency: cn[index]['currency'],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: cn.length,
          ),
        ),
      ),
    );
  }
}
