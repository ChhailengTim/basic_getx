import 'package:dio/dio.dart';
// const vs final

const String baseUrl = 'https://pchbiz-admin.idevgroup.club/api';

var dio = Dio(
  BaseOptions(
    baseUrl: URLs.host,
  ),
);

mixin URLs {
  static String url = 'https://pchbiz-admin.idevgroup.club/api';
  static String host = '$url/user_buyer_app';
}

class ImageURL {
  static String productImage =
      'https://pchbiz-admin.idevgroup.club/image/upload/products/';
}
