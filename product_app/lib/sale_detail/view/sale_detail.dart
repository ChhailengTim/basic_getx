import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/sale_detail/controller/button_next.dart';

class SaleDetailScreen extends StatelessWidget {
  const SaleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project 12'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset('assets/project12/1.png'),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/project12/2.png'),
                  Image.asset('assets/project12/3.png'),
                  Image.asset('assets/project12/3.png'),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'ឈ្មោះឡូរ\nកាលបរិច្ឆេទទិញ\nទីតាំង\nស្ថានភាព\nតម្លៃ\nឈ្មោះភ្នាក់ងារ\nឈ្មោះអតិថិជន\nភេទ\nលេខអត្តសញ្ញាណប័ណ្ណ\nលេខលិខិតឆ្លងដែន\nលេខទូរស័ព្ទ\nលេខទូរស័ព្ទជំនួស',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    ':A01\n:22 Dec 2022 . 23:40\n:ផ្លូវជាតិលេខ​៨ 8, ភូមិជ្រៃ\n:Approved\n\$50.000\n:សុក​ បូរ៉ា\n:រស្មី\n:ប្រុស\n:0000123456789\n:0000123456789\n:0123456789\n:0234567890',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonNext(
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) => ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Material(
                        child: SizedBox(
                          height: Get.height * 0.5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    const Text(
                                      'ការទូទាត់ប្រាក់់',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child:
                                          Image.asset('assets/project12/X.png'),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      'ឈ្មោះអ្នកផ្ញើរ​ប្រាក់\nឈ្មោះអ្នកទទួលប្រាក់\nកាលបរិច្ឆេទទទួលប្រាក់\nចំនួនទឹកប្រាក់',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      ':រស្មី\n:បូរ៉ា\n:22 Dec 2022 . 23:40\n:\$50.000',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                text: 'បង្ហាញការទូទាត់',
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonNext(
                onTap: () {},
                text: 'បោះពុម្ពកិច្ចសន្យាកក់ប្រាក់',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
