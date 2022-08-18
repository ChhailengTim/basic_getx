import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/realestate_screen/controller/sale_controller.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SaleController saleController = Get.put(SaleController());
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      appBar: AppBar(
        title: const Text('បញ្ជីលក់'),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Chip(
                  label: Text('All'),
                ),
                SizedBox(
                  width: 5,
                ),
                Chip(
                  label: Text('Pending'),
                ),
                SizedBox(
                  width: 5,
                ),
                Chip(
                  label: Text('Approved'),
                ),
                SizedBox(
                  width: 5,
                ),
                Chip(
                  label: Text('Reject'),
                ),
                SizedBox(
                  width: 5,
                ),
                Chip(
                  label: Text('Accept'),
                ),
                SizedBox(
                  width: 5,
                ),
                Chip(
                  label: Text('Cancel'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return propertyCard(
                    statusColor: index.isEven
                        ? '${saleController.saleList[index].status}'
                        : '${saleController.saleList[index].status}',
                    title: '${saleController.saleList[index].title}',
                    price: '${saleController.saleList[index].price}',
                    data: '${saleController.saleList[index].data}',
                    location: '${saleController.saleList[index].location}',
                    highway: ', ${saleController.saleList[index].highway}',
                    status: '${saleController.saleList[index].status}',
                  );
                },
                separatorBuilder: ((context, index) {
                  return const SizedBox();
                }),
                itemCount: saleController.saleList.length),
          ),
        ],
      ),
    );
  }

  Color? setColor(String statusColor) {
    switch (statusColor.toLowerCase()) {
      case 'pending':
        return Colors.blue;
      case 'reject':
        return Colors.red;
      case 'approved':
        return Colors.green;
    }
    return Colors.black;
  }

  Widget propertyCard({
    final String? statusColor,
    final String? title,
    final String? price,
    final String? data,
    final String? location,
    final String? highway,
    final String? status,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-6/296965865_606154154522076_2439495958756707063_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=c7NZaa273VYAX_oavMt&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT-rGsZVXuzqN4mLC6GyxnzabqjIKkFB8MNRAzvTJOEquA&oe=6301EEB1'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        title ?? 'null',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        price ?? 'null',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(data ?? 'null'),
                      const Spacer(),
                      Text(
                        status ?? 'null',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: setColor(statusColor!),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        location ?? 'null ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(highway ?? 'null'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tapOnTop({
    required String? text,
    final GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Chip(
          label: Text(text!),
        ),
      ),
    );
  }
}
