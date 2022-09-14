class PostModels {
  int? userId;
  int? id;
  String? title;
  String? body;
  PostModels({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  PostModels.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}
