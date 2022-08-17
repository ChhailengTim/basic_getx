import 'package:flutter/material.dart';
import 'package:product_app/realestate_screen/components/custom_button.dart';
import 'package:product_app/realestate_screen/components/text_card.dart';

class CommissionScreen extends StatelessWidget {
  const CommissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      appBar: AppBar(
        title: const Text('All Commission'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const TextCard(
                title: 'ជើងសារសរុប',
                price: '120\$',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextCard(
                title: 'ដករួច',
                price: '40\$',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextCard(
                title: 'អាចដក',
                price: '30\$',
              ),
              const SizedBox(
                height: 15,
              ),
              const TextCard(
                title: 'នៅសល់',
                price: '89\$',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                onTap: () {},
                text: 'All Sale',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
