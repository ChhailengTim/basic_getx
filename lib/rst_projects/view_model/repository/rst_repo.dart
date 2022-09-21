import 'dart:convert' as convert;

import 'package:basic_getx/rst_projects/model/rst_model.dart';
import 'package:http/http.dart' as http;

class RstRepo {
  var headers = {
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC90ZXN0LXN1cGVyYXBwLWFwaS5pZGV2Lmdyb3VwXC9tb2JpbGVcL2xvZ2luIiwiaWF0IjoxNjYzNzMzMDAzLCJleHAiOjEyOTg5MDg0OTE4MywibmJmIjoxNjYzNzMzMDAzLCJqdGkiOiJINkR0OUc4ZVNDQjhYeXlLIiwic3ViIjoxLCJwcnYiOiIyMzNkY2Y5ZGI4ZTEyYzljZmJmZDBmYTRkM2M3MmFkOTkwNDUxYjRjIn0.dgUnrjpzRJkKSQYn6OIKRAHk2cy18uIxm-cGo_bmeoM',
    'Content-Type': 'application/json'
  };
  var request = http.Request(
      'POST',
      Uri.parse(
          'https://test-superapp-api.idev.group/mobile/get_project_filter'));
  Future<List<dynamic>?> getRstData() async {
    try {
      request.body = convert.json.encode({"table_size": 10, "page": 1});
      request.headers.addAll(headers);
      final response = await request.send();
      if (response.statusCode == 200) {
        final responseData =
            convert.jsonDecode(await response.stream.bytesToString());
        print(responseData['data']['data']);
        return projectToList(responseData['data']['data']);
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
