import 'package:get/get.dart';
import 'package:product_app/json_data/api_help.dart';

import 'package:product_app/list_chip/model/post_model.dart';

class PostController extends GetxController {
  final post = PostModel().obs;
  final listPost = <PostModel>[].obs;
  final apiPost = ApiBaseHelper();

  @override
  void onInit() {
    getPost();
    super.onInit();
  }

  Future<void> getPost() {
    apiPost
        .onNetworkRequesting(
          urlFull: 'https://jsonplaceholder.typicode.com/posts',
          methode: METHODE.get,
          isAuthorize: false,
        )
        .then(
          (value) => value.map((e) {
            listPost.clear();
            post.value = PostModel.fromJson(e);
            listPost.add(post.value);
          }).toList(),
        );
    return getPost();
  }
}
