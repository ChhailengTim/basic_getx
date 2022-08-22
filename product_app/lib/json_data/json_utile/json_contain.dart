import 'package:dio/dio.dart';

var url = Dio(
  BaseOptions(
    baseUrl: URIs.url,
  ),
);

mixin URIs {
  static const String url =
      'https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master';
}
