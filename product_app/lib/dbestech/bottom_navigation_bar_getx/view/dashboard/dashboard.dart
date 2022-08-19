import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/model/custom_animated_bottombar.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/add/add.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/dashboard/dashboard_controller.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/home/home.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/messages/message.dart';
import 'package:product_app/dbestech/bottom_navigation_bar_getx/view/users/user.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final int currentIndex = 0;
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: const [
              Home(),
              Users(),
              Message(),
              Add(),
            ],
          ),
        ),
        bottomNavigationBar: CustomAnimatedBottomBar(
          containerHeight: 70,
          backgroundColor: Colors.white,
          selectedIndex: controller.tabIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: controller.changeTabIndex,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Icons.apps),
              title: const Text('Home'),
              activeColor: Colors.green,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.people),
              title: const Text('Users'),
              activeColor: Colors.purpleAccent,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.message),
              title: const Text(
                'Messages ',
              ),
              activeColor: Colors.pink,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.settings),
              title: const Text('Settings'),
              activeColor: Colors.blue,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    });
  }
}
