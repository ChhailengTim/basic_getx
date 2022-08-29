import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/showcupertino/view/method/drop_list.dart';
import 'package:product_app/showcupertino/view/method/drop_type.dart';
import 'package:product_app/showcupertino/view/widget/use_button.dart';

class ShowcupertinoScreen extends StatelessWidget {
  const ShowcupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Showcupertino'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.cancel_outlined),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('ទីតាំង'),
                              dropList(),
                              const Text('ប្រភេទឡូតិ៍'),
                              dropType(),
                              SizedBox(
                                height: Get.height * .15,
                              ),
                              const UseButton(
                                text: 'ច្រោះ',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
