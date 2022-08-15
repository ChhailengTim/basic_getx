import 'package:api_fetch/good/contants.dart';
import 'package:dio/dio.dart';

var dio = Dio(
  BaseOptions(
    baseUrl: URLs.host,
  ),
);

mixin URLs {
  static const String url = 'https://pchbiz-admin.idevgroup.club/api';
  static const String host = '$url/user_buyer_app';
}

class ImageUrl {
  static const String ImageUrlBase = 'https://pchbiz-admin.idevgroup.club/image/upload/products/';
}
