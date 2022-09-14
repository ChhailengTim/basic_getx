import 'package:product_app/catch_api/model/post_model.dart';

List<PostModels> postDataModels(List<dynamic> json) =>
    List<PostModels>.from(json.map((e) => PostModels.fromJson(e)));
