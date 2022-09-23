import 'package:dio/dio.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: URLs.host,
    headers: {'Authorization': 'Bearer YourToken'},
  ),
);

mixin URLs {
  static String url = 'https://test-superapp-api.idev.group';
  static String host = '$url/mobile';
}
