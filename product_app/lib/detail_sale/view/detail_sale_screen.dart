import 'package:flutter/material.dart';
import 'package:product_app/realestate_screen/view/commission_screen.dart';

class SaleDetailScreen extends StatelessWidget {
  const SaleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> iamgeShow = [
      'https://images.realestate.com.kh/__sized__/listings/2022-01/220105142869e5c4-12116-land-steng-keo-waterway-02-thumbnail-1040x780-70.jpeg',
      'https://images.realestate.com.kh/__sized__/listings/2022-03/1_Z2l3Ewt-thumbnail-1040x780-70.jpeg',
      'https://photos.ips-cambodia.com/photos/2112021534610ec3-2012SqmCommercialLandForSale11.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('គម្រោងទី១២'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.network(
                  'https://photos.ips-cambodia.com/photos/22030110129b2c53-Landforsale-19.jpg-1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: iamgeShow
                    .asMap()
                    .entries
                    .map(
                      (e) => SizedBox(
                        width: 120,
                        height: 70,
                        child: Image.network(
                          e.value,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    '\nឈ្មោះឡូតិ៍\nកាលបរិច្ឆេទទិញ\nទីតាំង\nស្ថានភាព\nតម្លៃ\nឈ្មោះភ្នាក់ងារ\n\nឈ្មោះអតិថិជន\nភេទ\nលេខអត្តសញ្ញាណប័ណ្ណ\nលេខលិខិតឆ្លងដែន\nលេខទូរស័ព្ទ\nលេខទូរស័ព្ទជំនួស',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    ':A01\n:22 Dec 2022 . 23:40\n:ផ្លូវជាតិលេខ​៨ 8, ភូមិជ្រៃ\n:Approved\n\$50.000\n:សុក​ បូរ៉ា\n\n:រស្មី\n:ប្រុស\n:0000123456789\n:0000123456789\n:0123456789\n:0234567890',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              CustomButton(
                onTap: () {},
                text: 'បង្ហាញការទូទាត់',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                onTap: () {},
                text: 'បោះពុម្ពកិច្ច​សន្យាកក់ប្រាក់',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
