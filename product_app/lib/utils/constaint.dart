import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

var dio = Dio(
  BaseOptions(
    baseUrl: URLs.host,
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

const defaultPadding = 20.0;
const cartBarHeight = 100.0;
const headerHeight = 85.0;

const bgColor = Color(0xFFF6F5F2);
const primaryColor = Color(0xFF40A944);

const panelTransition = Duration(milliseconds: 500);
