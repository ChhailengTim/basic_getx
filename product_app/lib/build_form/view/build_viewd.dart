import 'package:flutter/material.dart';
import 'package:product_app/build_form/view/method/bottom_sheet.dart';
import 'package:product_app/build_form/view/widget/build_form.dart';
import 'package:product_app/realestate_screen/view/commission_screen.dart';

class BuildFormScreen extends StatelessWidget {
  const BuildFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listBank = [
      'assets/banks/aba.png',
      'assets/banks/acleda.png',
      'assets/banks/wing.png',
      'assets/banks/true.png',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Build Form'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('ឈ្មោះពេញ'),
                          const SizedBox(
                            height: 9,
                          ),
                          buildForm(hint: 'ឈ្មោះពេញ'),
                          const Text('ភេទ'),
                          const SizedBox(
                            height: 9,
                          ),
                          buildForm(hint: 'ភេទ'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('ឈ្មោះអង់គ្លេស'),
                          const SizedBox(
                            height: 9,
                          ),
                          buildForm(hint: 'ឈ្មោះ​អ្នកប្រើប្រាស់'),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text('លេខអត្តសញ្ញាណប័ណ្ណ'),
                          const SizedBox(
                            height: 9,
                          ),
                          buildForm(hint: 'លេខទូរស័ព្ទជំនួស'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('លេខលិខិតឆ្លងដែន'),
                const SizedBox(
                  height: 9,
                ),
                buildForm(hint: 'លេខលិខិតឆ្លងដែន'),
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('លេខទូរស័ព្ទ'),
                          const SizedBox(
                            height: 9,
                          ),
                          buildForm(hint: 'លេខទូរស័ព្ទ'),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('លេខទូរស័ព្ទជំនួស'),
                          const SizedBox(
                            height: 9,
                          ),
                          buildForm(hint: 'លេខទូរស័ព្ទជំនួស'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onTap: () {
                    CustomBottomSheet.instance.myModalSheet(
                      childDrag: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: listBank
                                .asMap()
                                .entries
                                .map(
                                  (e) => SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      e.value,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          const Text(
                            'លេខគណនី​ Super App',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text('-168 888 999 ( Super App )'),
                          const Text(
                            '-168 888 999 ( Super App )',
                          ),
                          buildForm(hint: 'លេខគណនី/លេខកូដផ្ទេរ'),
                          buildForm(hint: 'ឈ្មោះ​របស់អ្នក'),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: const [
                                          Text(
                                            'កាលបរិចេ្ឆទផ្ទេរប្រាក់',
                                            style: TextStyle(
                                                color: Colors.black38),
                                          ),
                                          Text(
                                            '20-12-2022 12:32 PM',
                                            style: TextStyle(
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'ចំនួនទឹកប្រាក់',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  // Expanded(
                                  //   child: buildForm(hint: '\$100.00'),
                                  // ),
                                ],
                              ),
                              Container(
                                width: 181,
                                height: 181,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/banks/adds.png'),
                                      const Text(
                                        '20-12-2022 12:32 PM',
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  text: 'ទូទាត់',
                  textStyle: TextStyle(
                    color: Colors.yellow[800],
                  ),
                  isfill: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
