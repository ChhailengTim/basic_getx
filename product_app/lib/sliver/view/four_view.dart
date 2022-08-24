import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourView extends StatelessWidget {
  const FourView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: null,
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 200.0,
                    child: AbsorbPointer(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade200,
                        ),
                        onPressed: () {},
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('data'),
              ),
              const Actions(
                actions: {},
                child: Text('data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
