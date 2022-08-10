class PizzaModels {
  int? id;
  String? name;
  String? description;
  List<String>? ingredients;
  bool? spicy;
  bool? vegetarian;
  num? price;
  String? image;

  PizzaModels(
      {this.id,
      this.name,
      this.description,
      this.ingredients,
      this.spicy,
      this.vegetarian,
      this.price,
      this.image});

  PizzaModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    ingredients = json['ingredients'].cast<String>();
    spicy = json['spicy'];
    vegetarian = json['vegetarian'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['ingredients'] = ingredients;
    data['spicy'] = spicy;
    data['vegetarian'] = vegetarian;
    data['price'] = price;
    data['image'] = image;
    return data;
  }
}
