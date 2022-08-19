import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListSell extends StatelessWidget {
  const ListSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const SellCard();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SellCard extends StatelessWidget {
  const SellCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Text(
              'A01',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Agency'),
                        SizedBox(
                          width: 15,
                        ),
                        Text(':'),
                        SizedBox(
                          width: 25,
                        ),
                        Text('Rona'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('ជើងសាសរុប'),
                        Text('120\$'),
                        Text('អាចដក'),
                        Text('120\$'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('ដករួច'),
                        Text('120\$'),
                        Text('អាចដក'),
                        Text('120\$'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
