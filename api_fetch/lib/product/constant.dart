import 'package:dio/dio.dart';

// String apiToken;

var dio = Dio(
  BaseOptions(
    baseUrl: URLs.host,
    // connectTimeout: AppLimit.REQUEST_TIME_OUT,
    // receiveTimeout: AppLimit.REQUEST_TIME_OUT,
    // sendTimeout: AppLimit.REQUEST_TIME_OUT,
    // headers: {'Authorization': 'Bearer $apiToken'},
    // contentType: 'application/json',
  ),
);

mixin URLs {
  static const String url = 'https://pchbiz-admin.idevgroup.club/api';
  static const String host = '$url/user_buyer_app';
}

class ImageURL {
  static const String productImage =
      'https://pchbiz-admin.idevgroup.club/image/upload/products/';
}
