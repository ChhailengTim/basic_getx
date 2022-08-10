import 'package:basic_getx/3_change_theme/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeThemeScreen extends StatelessWidget {
  const ChangeThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Scaffold(
      appBar: AppBar(
        actions: [
          Obx(() => IconButton(
                onPressed: () {
                  themeController.change.value = !themeController.change.value;
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                icon: themeController.change.value
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode),
              )),
        ],
      ),
      body: Center(
        child: Text(
          'Hello',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
