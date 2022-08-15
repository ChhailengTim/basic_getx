import 'package:api_fetch/brand/model/post_model.dart';
import 'package:dio/dio.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  final url = 'https://jsonplaceholder.typicode.com/posts'.obs;
  final post = PostModel().obs;
  final postList = <PostModel>[].obs;

  List<PostModel> get data => postList;

  Future getPost() async {
    try {
      var dio = Dio();
      var response = await dio.get(url.value);
      if (response.statusCode == 200) {
        postList.clear();
        response.data.map((e) {
          post.value = PostModel.fromJson(e);
          postList.add(post.value);
        }).toList();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
