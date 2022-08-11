import 'package:dio/dio.dart';

var dio = Dio(
  BaseOptions(
    baseUrl: URL.host,
  ),
);

mixin URL {
  static const String url = 'https://pchbiz-admin.idevgroup.club/api';
  static const String host = '/user_buyer_app';
}
