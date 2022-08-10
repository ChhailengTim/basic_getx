import 'package:basic_getx/4_route_management/screen/first_screen.dart';
import 'package:basic_getx/4_route_management/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Management'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => const FirstScreen());
                },
                child: Text(
                  'First Screen',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SecondScreen());
                },
                child: Text(
                  'Second Screen',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Course'),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('More'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
