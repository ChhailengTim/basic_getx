import 'package:basic_getx/controller/store_controller.dart';
import 'package:basic_getx/models/button.dart';
import 'package:basic_getx/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final storeController = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Follower"),
              Text(
                "${storeController.followerCount.value}",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ButtonDecreIncre(
                      title: "Decrement",
                      onTap: () {
                        storeController.followerCount - 1;
                      },
                    ),
                    const Spacer(),
                    ButtonDecreIncre(
                      title: "Increment",
                      onTap: () {
                        storeController.updateFollowerCount();
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(const UserScreen());
                },
                child: const Text('User Home Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
