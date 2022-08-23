import 'package:dio/dio.dart';

var thedio = Dio(
  BaseOptions(
    baseUrl: URIs.host,
  ),
);

mixin URIs {
  static const String url = 'https://pchbiz-admin.idevgroup.club/api';
  static const String host = '$url/user_buyer_app';
}

class ImageURL {
  static const String productImage =
      'https://pchbiz-admin.idevgroup.club/image/upload/products/';
}
