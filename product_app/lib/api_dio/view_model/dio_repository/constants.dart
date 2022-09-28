import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/view_model/dio_repository/string_tk.dart';

final notesData = Get.put(Protections());
Dio dio = Dio(
  BaseOptions(
    baseUrl: URLs.host,
    headers: {'Authorization': 'Bearer ${Protections.data}'},
  ),
);

mixin URLs {
  static String url = 'https://test-superapp-api.idev.group';
  static String host = '$url/mobile';
}
