import 'package:flutter/material.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                  return propertyCard();
                },
                separatorBuilder: ((context, index) {
                  return const SizedBox();
                }),
                itemCount: 30),
          ),
        ],
      ),
    );
  }

  Widget propertyCard() {
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
                    children: const [
                      Text(
                        'A01',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$50.000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text('22 DEC, 23:40'),
                      Spacer(),
                      Text(
                        'Pending',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Phnom Penh, ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('3 National road, Highway'),
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
