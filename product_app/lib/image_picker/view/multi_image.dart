import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MultiImageScreen extends StatefulWidget {
  const MultiImageScreen({super.key});

  @override
  State<MultiImageScreen> createState() => _MultiImageScreenState();
}

class _MultiImageScreenState extends State<MultiImageScreen> {
  List image = [];
  @override
  Widget build(BuildContext context) {
    Future<List<dynamic>?> _selectMultiImage() async {
      List<XFile> images = [];
      images.assignAll(await ImagePicker().pickMultiImage());
      if (images.isNotEmpty) {
        List<File> fileImages = [];
        List<String> imgs64 = [];
        for (int index = 0; index < images.length; index++) {
          fileImages.add(File(images[index].path));
          final bytes = await fileImages[index].readAsBytes();
          imgs64.add(base64Encode(bytes));
        }
        return [fileImages, imgs64];
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(image.length.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: image.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(
                      image[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var tap = ((await _selectMultiImage())![0]);
          setState(() {
            image = tap;
          });
        },
        child: const Icon(Icons.camera_enhance),
      ),
    );
  }
}
