import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:product_app/list_chip/model/post_model.dart';

class PostController extends GetxController {
  var url = 'https://jsonplaceholder.typicode.com/posts'.obs;
  final post = PostModel().obs;
  final listPost = <PostModel>[].obs;
  var client = http.Client();
  List<PostModel> get data => listPost.toList();
  Future<void> getPost() async {
    try {
      http.Response response = await http.get(
        Uri.tryParse('$url')!,
      );
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        post.value = PostModel.fromJson(result);
        listPost.add(post.value);
        print(listPost.toString());
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
