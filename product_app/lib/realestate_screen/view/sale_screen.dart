import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/realestate_screen/components/status_card.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      appBar: AppBar(
        title: const Text('បញ្ជីលក់'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: StatusList(),
              ),
              SizedBox(
                height: 200,
                child: DecoratedBox(
                  decoration: BoxDecoration(),
                  child: Row(
                    children: [
                      SizedBox(),
                      Container(),
                      Column(
                        children: [
                          Row(),
                          Row(),
                          SizedBox(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusList extends StatelessWidget {
  const StatusList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          StatusCard(
            text: 'All',
          ),
          SizedBox(
            width: 10,
          ),
          StatusCard(
            text: 'Pending',
          ),
          SizedBox(
            width: 10,
          ),
          StatusCard(
            text: 'Approved',
          ),
          SizedBox(
            width: 10,
          ),
          StatusCard(
            text: 'Post',
          ),
        ],
      ),
    );
  }
}
