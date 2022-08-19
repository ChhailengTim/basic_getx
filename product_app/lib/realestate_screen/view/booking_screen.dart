import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/realestate_screen/controller/booking_controller.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookingController bookingController = Get.put(BookingController());
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: bookingController.bookingList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                    ),
                    itemBuilder: (context, index) {
                      return bookingCard(
                          type: index.isEven
                              ? '${bookingController.bookingList[index].status}'
                              : '${bookingController.bookingList[index].status}',
                          title:
                              '${bookingController.bookingList[index].title}',
                          sqr: '${bookingController.bookingList[index].sqr}',
                          price:
                              '${bookingController.bookingList[index].price}',
                          status:
                              '${bookingController.bookingList[index].status}');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color? switchColors(String type) {
    switch (type.toLowerCase()) {
      case 'booked':
        return Colors.yellow[600];
      case 'sold':
        return Colors.red;
    }
    return Colors.black26;
  }

  Container bookingCard({
    String? type,
    final String? title,
    final String? sqr,
    final String? price,
    final String? status,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: switchColors(type!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title ?? 'non',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            sqr ?? 'null',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price ?? 'null',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            status ?? 'null',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        //const Spacer(),
        Container(
          //margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          width: Get.width * .8,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "ស្វែងរកគម្រោង",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Icon(Icons.search),
            ],
          ),
        ),
      ],
    );
  }
}
