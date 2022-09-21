import 'package:dio/dio.dart';

class GetApi {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  Future getData() async {
    final response = await Dio().get(url);
    print(response.data);
  }
}
