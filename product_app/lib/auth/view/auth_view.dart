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
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  'Validation Check',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                ),
                TextFormField(
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
