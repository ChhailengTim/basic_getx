import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key, this.num}) : super(key: key);
  final int? num;

  @override
  Widget build(BuildContext context) {
    //final postController = Get.put(PostController());
    return Scaffold(
      appBar: AppBar(
        title: Text('$num'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              //postController.getPost();
            },
            child: const Text('Getdata'),
          ),
          //Text('${postController.listPost.id}')
        ],
      ),
    );
  }
}
