import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/realestate_screen/view/booking_screen.dart';
import 'package:product_app/realestate_screen/view/commission_screen.dart';
import 'package:product_app/realestate_screen/view/detail_screen.dart';
import 'package:product_app/realestate_screen/view/filter_screen.dart';
import 'package:product_app/realestate_screen/view/list_screen.dart';
import 'package:product_app/realestate_screen/view/list_sell.dart';
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
          child: SingleChildScrollView(
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
                GestureDetector(
                  onTap: () {
                    Get.to(const DetailScreen());
                  },
                  child: const TextCard(
                    title: 'Project Detail Screen',
                    price: '>',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const ListScreen());
                  },
                  child: const TextCard(
                    title: 'List Screen',
                    price: '>',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const BookingScreen());
                  },
                  child: const TextCard(
                    title: 'Booking Screen',
                    price: '>',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ListSell());
                  },
                  child: const TextCard(
                    title: 'List Sell Screen',
                    price: '>',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const FilterScreen());
                  },
                  child: const TextCard(
                    title: 'Filter Screen',
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
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({
    Key? key,
    this.title,
    this.price,
  }) : super(key: key);
  final String? title;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 40,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: [
            Text(
              title ?? 'non-title',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
            ),
            const Spacer(),
            Text(
              price ?? 'non-price',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
