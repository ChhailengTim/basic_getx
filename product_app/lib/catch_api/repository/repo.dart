
import 'package:product_app/catch_api/model/post_data_model.dart';
import 'package:product_app/catch_api/model/post_model.dart';
import 'package:product_app/utils/constaint.dart';

class Repository {
  Future<List<PostModels>?> getPostData() async {
    try {
      final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
      if(response.statusCode==200){
        final responseData=response.data['data'];
        return postDataModels(responseData);
      }
    } catch (e) {
      throw Exception();
    }
    return null;
  }
}
