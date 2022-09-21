List<ProjectModel> projectToList(List<dynamic> json) =>
    List<ProjectModel>.from(json.map((value) => ProjectModel.fromJson(value)));

class ProjectModel {
  int? id;
  String? projectName;
  String? imageThumbnail;
  String? youtubeLink;
  String? phones;
  int? provinceId;
  String? provinceName;
  int? projectTypeId;
  String? projectTypeName;
  String? latitude;
  String? longitude;
  String? description;
  List<ImageGallery>? imageGallery;

  ProjectModel(
      {this.id,
      this.projectName,
      this.imageThumbnail,
      this.youtubeLink,
      this.phones,
      this.provinceId,
      this.provinceName,
      this.projectTypeId,
      this.projectTypeName,
      this.latitude,
      this.longitude,
      this.description,
      this.imageGallery});

  ProjectModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    projectName = json['project_name'];
    imageThumbnail = json['image_thumbnail'] ;
    youtubeLink = json['youtube_link'];
    phones = json['phones'];
    provinceId = json['province_id'];
    provinceName = json['province_name'] ;
    projectTypeId = json['project_type_id'];
    projectTypeName = json['project_type_name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    description = json['description'];
    if (json['image_gallery'] != null) {
      imageGallery = <ImageGallery>[];
      json['image_gallery'].forEach((v) {
        imageGallery!.add(ImageGallery.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['project_name'] = projectName;
    data['image_thumbnail'] = imageThumbnail;
    data['youtube_link'] = youtubeLink;
    data['phones'] = phones;
    data['province_id'] = provinceId;
    data['province_name'] = provinceName;
    data['project_type_id'] = projectTypeId;
    data['project_type_name'] = projectTypeName;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['description'] = description;
    if (imageGallery != null) {
      data['image_gallery'] = imageGallery!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ImageGallery {
  int? id;
  String? name;
  int? moduleType;
  int? moduleId;
  int? order;
  String? createdAt;
  String? updatedAt;

  ImageGallery(
      {this.id,
      this.name,
      this.moduleType,
      this.moduleId,
      this.order,
      this.createdAt,
      this.updatedAt});

  ImageGallery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    moduleType = json['module_type'];
    moduleId = json['module_id'];
    order = json['order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['module_type'] = moduleType;
    data['module_id'] = moduleId;
    data['order'] = order;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

List<AssetModel> assetToList(List<dynamic> json) =>
    List<AssetModel>.from(json.map((value) => AssetModel.fromJson(value)));

class AssetModel {
  int? id;
  int? projectId;
  String? projectName;
  String? assetCode;
  int? assetCategoryId;
  String? assetCategoryName;
  int? assetSize;
  String? salePrice;
  int? status;

  AssetModel(
      {this.id,
      this.projectId,
      this.projectName,
      this.assetCode,
      this.assetCategoryId,
      this.assetCategoryName,
      this.assetSize,
      this.salePrice,
      this.status});

  AssetModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    projectId = json['project_id'];
    projectName = json['project_name'];
    assetCode = json['asset_code'] ?? '-';
    assetCategoryId = json['asset_category_id'];
    assetCategoryName = json['asset_category_name'];
    assetSize = json['asset_size'] ?? '-';
    salePrice = json['sale_price'] ?? '-';
    status = json['status'];
  }
}
