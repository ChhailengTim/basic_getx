import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main() async {
  List<CommentModel> commentData = [];
  try {
    final response = await http
        .get((Uri.parse('https://jsonplaceholder.typicode.com/comments')));
    if (response.statusCode == 200) {
      final responseData = convert.jsonDecode(response.body);
      commentData.addAll(commentModelToList(responseData));
    }
  } catch (e) {
    throw Exception(e);
  }
  for(int i=0;i<commentData.length;i++){
    print(commentData[i].id  );
    print(commentData[i].email);
  }
}

class CommentModel {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommentModel({this.postId, this.id, this.name, this.email, this.body});

  CommentModel.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['body'] = this.body;
    return data;
  }
}

List<CommentModel> commentModelToList(List<dynamic> json) =>
    List<CommentModel>.from(json.map((e) => CommentModel.fromJson(e)));
