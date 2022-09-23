import 'package:dio/dio.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: URLs.host,
    headers: {
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC90ZXN0LXN1cGVyYXBwLWFwaS5pZGV2Lmdyb3VwXC9tb2JpbGVcL2xvZ2luIiwiaWF0IjoxNjYzNzMzMDAzLCJleHAiOjEyOTg5MDg0OTE4MywibmJmIjoxNjYzNzMzMDAzLCJqdGkiOiJINkR0OUc4ZVNDQjhYeXlLIiwic3ViIjoxLCJwcnYiOiIyMzNkY2Y5ZGI4ZTEyYzljZmJmZDBmYTRkM2M3MmFkOTkwNDUxYjRjIn0.dgUnrjpzRJkKSQYn6OIKRAHk2cy18uIxm-cGo_bmeoM'
    },
  ),
);

mixin URLs {
  static String url = 'https://test-superapp-api.idev.group';
  static String host = '$url/mobile';
}
