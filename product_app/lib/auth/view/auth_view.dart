import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/auth/controller/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(
                      authController.title.value,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                    )),
                TextFormField(
                  onChanged: (v) {
                    authController.username;
                  },
                  controller: authController.username,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: ((value) {
                    if (value!.isEmpty || !RegExp('').hasMatch(value)) {
                      return 'Enter correct name';
                    }
                    return null;
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: authController.password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: ((value) {
                    if (value!.isEmpty || !RegExp('').hasMatch(value)) {
                      return 'Enter correct password';
                    }
                    return null;
                  }),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                    authController.title.value = authController.username.text;
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
