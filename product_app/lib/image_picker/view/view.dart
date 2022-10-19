import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:product_app/image_picker/view/multi_image.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  dynamic _image;

  // Future getImage() async {
  //   final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (image == null) return;
  //   final imageTemporary = File(image.path);
  //   setState(() {
  //     _image = imageTemporary;
  //   });
  // }

  Future<List<dynamic>?> _selectImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      File fileImage = File(image.path);
      final bytes = await fileImage.readAsBytes();
      String img64 = base64Encode(bytes);
      return [fileImage, img64];
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              var data = (await _selectImage(ImageSource.gallery))![0];
              setState(() {
                _image = data;
              });
            },
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: _image != null
                  ? Image.file(
                      _image!,
                      fit: BoxFit.cover,
                    )
                  : const Icon(Icons.add),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const MultiImageScreen());
            },
            child: const Text('Go to next page'),
          ),
        ],
      ),
    );
  }
}
