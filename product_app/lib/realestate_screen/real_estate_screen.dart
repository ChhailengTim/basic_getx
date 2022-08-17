import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/realestate_screen/components/text_card.dart';
import 'package:product_app/realestate_screen/view/commission_screen.dart';
import 'package:product_app/realestate_screen/view/sale_screen.dart';

class RealEstateScreen extends StatelessWidget {
  const RealEstateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(const CommissionScreen());
                },
                child: const TextCard(
                  title: 'All Commission Screen',
                  price: '>',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const SaleScreen());
                },
                child: const TextCard(
                  title: 'Sale List Screen',
                  price: '>',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
