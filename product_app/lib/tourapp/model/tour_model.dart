class AttractionModel {
  int? id;
  String? title;
  String? photos;
  String? province;
  String? image;
  String? location;
  String? description;

  AttractionModel({
    this.id,
    this.title,
    this.photos,
    this.province,
    this.image,
    this.location,
    this.description,
  });

  AttractionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    photos = json['photos'];
    province = json['province'];
    image = json['image'];
    location = json['location'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['photos'] = photos;
    data['province'] = province;
    data['image'] = image;
    data['location'] = location;
    data['description'] = description;
    return data;
  }
}

List<AttractionModel> attractionToList(List<dynamic> json) =>
    List<AttractionModel>.from(json.map((e) => AttractionModel.fromJson(e)));

class ProvinceModel {
  int? id;
  String? provinceName;
  String? provinceImage;
  ProvinceModel({
    this.id,
    this.provinceName,
    this.provinceImage,
  });
}

List<ProvinceModel> listProvice = [
  ProvinceModel(
    id: 1,
    provinceName: 'Siem Reap',
    provinceImage: 'assets/mini_app/tour_test/province/sem_reab.jpg',
  ),
  ProvinceModel(
    id: 2,
    provinceName: 'Phnom Penh',
    provinceImage: 'assets/mini_app/tour_test/province/phnom_penh .jpg',
  ),
  ProvinceModel(
    id: 3,
    provinceName: 'Koh Kong',
    provinceImage: 'assets/mini_app/tour_test/province/khos_kong.jpg',
  ),
  ProvinceModel(
    id: 4,
    provinceName: 'Kampong Chhnang',
    provinceImage: 'assets/mini_app/tour_test/province/presihanuk.jpg',
  ),
  ProvinceModel(
    id: 5,
    provinceName: 'Pursat',
    provinceImage: 'assets/mini_app/tour_test/province/pursat.jpg',
  ),
  ProvinceModel(
    id: 6,
    provinceName: 'Kampot',
    provinceImage: 'assets/mini_app/tour_test/province/kampot.jpg',
  ),
  ProvinceModel(
    id: 7,
    provinceName: 'Mondulkiri',
    provinceImage: 'assets/mini_app/tour_test/province/mondulkiri.jpg',
  ),
  ProvinceModel(
    id: 8,
    provinceName: 'All',
    provinceImage: 'assets/mini_app/tour_test/province/all.jpg',
  ),
];

class Component {
  String? componentImage;
  String? componentName;
  String? componentLocation;
  Component({
    this.componentImage,
    this.componentName,
    this.componentLocation,
  });
}

List<Component> listComponent = [
  Component(
    componentImage: 'assets/mini_app/tour_test/images/component/cpn1.jpg',
    componentName: 'Paradise Resort',
    componentLocation: 'Phnom Penh',
  ),
  Component(
    componentImage: 'assets/mini_app/tour_test/images/component/cpn2.jpg',
    componentName: 'Paradise Resort',
    componentLocation: '',
  ),
  Component(
    componentImage: 'assets/mini_app/tour_test/images/component/cpn3.jpg',
    componentName: 'Paradise Resort',
    componentLocation: 'Phnom Penh',
  ),
  Component(
    componentImage: 'assets/mini_app/tour_test/images/component/cpn4.jpg',
    componentName: 'Paradise Resort',
    componentLocation: 'Phnom Penh',
  ),
  Component(
    componentImage: 'assets/mini_app/tour_test/images/component/cpn5.jpg',
    componentName: 'Paradise Resort',
    componentLocation: 'Phnom Penh',
  ),
  Component(
    componentImage: 'assets/mini_app/tour_test/images/component/cpn6.jpg',
    componentName: 'Paradise Resort',
    componentLocation: 'Phnom Penh',
  ),
  Component(
    componentImage: 'assets/mini_app/tour_test/images/component/cpn7.jpg',
    componentName: 'Paradise Resort',
    componentLocation: 'Phnom Penh',
  ),
];
