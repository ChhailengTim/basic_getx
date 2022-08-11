import 'package:basic_getx/12_note_api/controller/note_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final noteController = Get.put(NoteController());
    return Scaffold(
      body: ListView.builder(
          itemCount: noteController.data.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                title: Text('${noteController.data[index].productName}'),
                leading: Image.network(
                    '${noteController.data[index].imageThumbnail}'),
              ),
            );
          })),
    );
  }
}
