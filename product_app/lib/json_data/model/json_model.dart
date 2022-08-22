import 'dart:convert';

JsonModel jsonModelFromJson(String str) => JsonModel.fromJson(json.decode(str));

String jsonModelToJson(JsonModel data) => json.encode(data.toJson());

class JsonModel {
    JsonModel({
        required this.data,
    });

    List<Map<String, Datum>> data;

    factory JsonModel.fromJson(Map<String, dynamic> json) => JsonModel(
        data: List<Map<String, Datum>>.from(json["data"].map((x) => Map.from(x).map((k, v) => MapEntry<String, Datum>(k, Datum.fromJson(v))))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())))),
    };
}

class Datum {
    Datum({
        this.name,
        this.emoji,
        this.unicode,
        this.image,
    });

    String? name;
    String? emoji;
    String? unicode;
    String? image;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        emoji: json["emoji"],
        unicode: json["unicode"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "emoji": emoji,
        "unicode": unicode,
        "image": image,
    };
}
