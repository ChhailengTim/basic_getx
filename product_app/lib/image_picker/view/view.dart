import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? _image;

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
        children: [
          InkWell(
            onTap: () {
              _selectImage(ImageSource.gallery);
            },
            child: SizedBox(
              width: 200,
              height: 200,
              child: _image != null
                  ? Image.file(
                      _image!,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      'https://miro.medium.com/max/1400/1*IC7_pdLtDMqwoqLkTib4JQ.jpeg',
                      fit: BoxFit.cover,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
