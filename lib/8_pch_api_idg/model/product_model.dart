// class Pagination {
//   Pagination? pagination;

//   Pagination({this.pagination});

//   Pagination.fromJson(Map<String, dynamic> json) {
//     pagination = json['pagination'] != null
//         ? Pagination.fromJson(json['pagination'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (pagination != null) {
//       data['pagination'] = pagination!.toJson();
//     }
//     return data;
//   }
// }

// class Paginations {
//   int? total;
//   int? perPage;
//   int? currentPage;
//   int? lastPage;
//   int? from;
//   int? to;

//   Paginations(
//       {this.total,
//       this.perPage,
//       this.currentPage,
//       this.lastPage,
//       this.from,
//       this.to});

//   Paginations.fromJson(Map<String, dynamic> json) {
//     total = json['total'];
//     perPage = json['per_page'];
//     currentPage = json['current_page'];
//     lastPage = json['last_page'];
//     from = json['from'];
//     to = json['to'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['total'] = total;
//     data['per_page'] = perPage;
//     data['current_page'] = currentPage;
//     data['last_page'] = lastPage;
//     data['from'] = from;
//     data['to'] = to;
//     return data;
//   }
// }

// class Products {
//   int? id;
//   int? storeId;
//   String? storeName;
//   String? storeProfile;
//   String? productName;
//   String? productNum;
//   String? refNum;
//   int? categoryId;
//   String? categoryName;
//   int? brandId;
//   String? brandName;
//   int? modelId;
//   String? modelName;
//   int? year;
//   String? condition;
//   String? priceBeforeDiscount;
//   String? discountAmount;
//   int? discountType;
//   String? sellPrice;
//   int? qty;
//   String? alertQty;
//   String? priceStatus;
//   String? imageThumbnail;
//   String? imageShare;
//   String? shortDesc;
//   String? fullDesc;
//   String? sellStatus;
//   int? status;
//   int? orderCount;
//   String? rateCount;
//   String? attributeKey;
//   int? hasVariant;
//   int? parentId;
//   String? variantDetail;
//   int? preOrder;
//   List<ItemAttribute>? itemAttribute;
//   List<FileManager>? fileManager;
//   List<ProductOption>? productOption;
//   List<ProductVariant>? productVariant;

//   Products(
//       {this.id,
//       this.storeId,
//       this.storeName,
//       this.storeProfile,
//       this.productName,
//       this.productNum,
//       this.refNum,
//       this.categoryId,
//       this.categoryName,
//       this.brandId,
//       this.brandName,
//       this.modelId,
//       this.modelName,
//       this.year,
//       this.condition,
//       this.priceBeforeDiscount,
//       this.discountAmount,
//       this.discountType,
//       this.sellPrice,
//       this.qty,
//       this.alertQty,
//       this.priceStatus,
//       this.imageThumbnail,
//       this.imageShare,
//       this.shortDesc,
//       this.fullDesc,
//       this.sellStatus,
//       this.status,
//       this.orderCount,
//       this.rateCount,
//       this.attributeKey,
//       this.hasVariant,
//       this.parentId,
//       this.variantDetail,
//       this.preOrder,
//       this.itemAttribute,
//       this.fileManager,
//       this.productOption,
//       this.productVariant});

//   Products.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     storeId = json['store_id'];
//     storeName = json['store_name'];
//     storeProfile = json['store_profile'];
//     productName = json['product_name'];
//     productNum = json['product_num'];
//     refNum = json['ref_num'];
//     categoryId = json['category_id'];
//     categoryName = json['category_name'];
//     brandId = json['brand_id'];
//     brandName = json['brand_name'];
//     modelId = json['model_id'];
//     modelName = json['model_name'];
//     year = json['year'];
//     condition = json['condition'];
//     priceBeforeDiscount = json['price_before_discount'];
//     discountAmount = json['discount_amount'];
//     discountType = json['discount_type'];
//     sellPrice = json['sell_price'];
//     qty = json['qty'];
//     alertQty = json['alert_qty'];
//     priceStatus = json['price_status'];
//     imageThumbnail = json['image_thumbnail'];
//     imageShare = json['image_share'];
//     shortDesc = json['short_desc'];
//     fullDesc = json['full_desc'];
//     sellStatus = json['sell_status'];
//     status = json['status'];
//     orderCount = json['order_count'];
//     rateCount = json['rate_count'];
//     attributeKey = json['attribute_key'];
//     hasVariant = json['has_variant'];
//     parentId = json['parent_id'];
//     variantDetail = json['variant_detail'];
//     preOrder = json['pre_order'];
//     if (json['item_attribute'] != null) {
//       itemAttribute = <ItemAttribute>[];
//       json['item_attribute'].forEach((v) {
//         itemAttribute!.add(ItemAttribute.fromJson(v));
//       });
//     }
//     if (json['file_manager'] != null) {
//       fileManager = <FileManager>[];
//       json['file_manager'].forEach((v) {
//         fileManager!.add(FileManager.fromJson(v));
//       });
//     }
//     if (json['product_option'] != null) {
//       productOption = <ProductOption>[];
//       json['product_option'].forEach((v) {
//         productOption!.add(ProductOption.fromJson(v));
//       });
//     }
//     if (json['product_variant'] != null) {
//       productVariant = <ProductVariant>[];
//       json['product_variant'].forEach((v) {
//         productVariant!.add(ProductVariant.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['store_id'] = storeId;
//     data['store_name'] = storeName;
//     data['store_profile'] = storeProfile;
//     data['product_name'] = productName;
//     data['product_num'] = productNum;
//     data['ref_num'] = refNum;
//     data['category_id'] = categoryId;
//     data['category_name'] = categoryName;
//     data['brand_id'] = brandId;
//     data['brand_name'] = brandName;
//     data['model_id'] = modelId;
//     data['model_name'] = modelName;
//     data['year'] = year;
//     data['condition'] = condition;
//     data['price_before_discount'] = priceBeforeDiscount;
//     data['discount_amount'] = discountAmount;
//     data['discount_type'] = discountType;
//     data['sell_price'] = sellPrice;
//     data['qty'] = qty;
//     data['alert_qty'] = alertQty;
//     data['price_status'] = priceStatus;
//     data['image_thumbnail'] = imageThumbnail;
//     data['image_share'] = imageShare;
//     data['short_desc'] = shortDesc;
//     data['full_desc'] = fullDesc;
//     data['sell_status'] = sellStatus;
//     data['status'] = status;
//     data['order_count'] = orderCount;
//     data['rate_count'] = rateCount;
//     data['attribute_key'] = attributeKey;
//     data['has_variant'] = hasVariant;
//     data['parent_id'] = parentId;
//     data['variant_detail'] = variantDetail;
//     data['pre_order'] = preOrder;
//     if (itemAttribute != null) {
//       data['item_attribute'] = itemAttribute!.map((v) => v.toJson()).toList();
//     }
//     if (fileManager != null) {
//       data['file_manager'] = fileManager!.map((v) => v.toJson()).toList();
//     }
//     if (productOption != null) {
//       data['product_option'] = productOption!.map((v) => v.toJson()).toList();
//     }
//     if (productVariant != null) {
//       data['product_variant'] = productVariant!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class ItemAttribute {
//   int? id;
//   int? productItemId;
//   int? attributeParent;
//   int? attributeId;
//   String? attributeVal;
//   String? createdAt;
//   String? updatedAt;
//   String? deletedAt;
//   String? attributeName;

//   ItemAttribute(
//       {this.id,
//       this.productItemId,
//       this.attributeParent,
//       this.attributeId,
//       this.attributeVal,
//       this.createdAt,
//       this.updatedAt,
//       this.deletedAt,
//       this.attributeName});

//   ItemAttribute.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     productItemId = json['product_item_id'];
//     attributeParent = json['attribute_parent'];
//     attributeId = json['attribute_id'];
//     attributeVal = json['attribute_val'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     deletedAt = json['deleted_at'];
//     attributeName = json['attribute_name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['product_item_id'] = productItemId;
//     data['attribute_parent'] = attributeParent;
//     data['attribute_id'] = attributeId;
//     data['attribute_val'] = attributeVal;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['deleted_at'] = deletedAt;
//     data['attribute_name'] = attributeName;
//     return data;
//   }
// }

// class FileManager {
//   int? id;
//   int? productId;
//   int? fileManagerId;
//   String? fileName;

//   FileManager({this.id, this.productId, this.fileManagerId, this.fileName});

//   FileManager.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     productId = json['product_id'];
//     fileManagerId = json['file_manager_id'];
//     fileName = json['file_name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['product_id'] = productId;
//     data['file_manager_id'] = fileManagerId;
//     data['file_name'] = fileName;
//     return data;
//   }
// }

// class ProductOption {
//   int? id;
//   int? itemId;
//   String? name;
//   String? createdAt;
//   String? updatedAt;
//   String? deletedAt;
//   List<ProductOptionValue>? productOptionValue;

//   ProductOption(
//       {this.id,
//       this.itemId,
//       this.name,
//       this.createdAt,
//       this.updatedAt,
//       this.deletedAt,
//       this.productOptionValue});

//   ProductOption.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     itemId = json['item_id'];
//     name = json['name'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     deletedAt = json['deleted_at'];
//     if (json['product_option_value'] != null) {
//       productOptionValue = <ProductOptionValue>[];
//       json['product_option_value'].forEach((v) {
//         productOptionValue!.add(ProductOptionValue.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['item_id'] = itemId;
//     data['name'] = name;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['deleted_at'] = deletedAt;
//     if (productOptionValue != null) {
//       data['product_option_value'] =
//           productOptionValue!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class ProductOptionValue {
//   int? id;
//   int? itemId;
//   int? itemOptionId;
//   String? name;
//   String? image;
//   String? createdAt;
//   String? updatedAt;
//   String? deletedAt;

//   ProductOptionValue(
//       {this.id,
//       this.itemId,
//       this.itemOptionId,
//       this.name,
//       this.image,
//       this.createdAt,
//       this.updatedAt,
//       this.deletedAt});

//   ProductOptionValue.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     itemId = json['item_id'];
//     itemOptionId = json['item_option_id'];
//     name = json['name'];
//     image = json['image'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     deletedAt = json['deleted_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['item_id'] = itemId;
//     data['item_option_id'] = itemOptionId;
//     data['name'] = name;
//     data['image'] = image;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['deleted_at'] = deletedAt;
//     return data;
//   }
// }

// class ProductVariant {
//   int? id;
//   int? storeId;
//   String? storeName;
//   String? productName;
//   String? productNum;
//   String? refNum;
//   int? categoryId;
//   String? categoryName;
//   int? brandId;
//   String? brandName;
//   int? modelId;
//   String? modelName;
//   int? year;
//   String? condition;
//   String? priceBeforeDiscount;
//   String? discountAmount;
//   int? discountType;
//   String? sellPrice;
//   int? qty;
//   String? alertQty;
//   String? priceStatus;
//   String? imageThumbnail;
//   String? shortDesc;
//   String? fullDesc;
//   String? sellStatus;
//   int? status;
//   int? orderCount;
//   String? rateCount;
//   String? attributeKey;
//   int? hasVariant;
//   int? parentId;
//   String? variantDetail;
//   int? preOrder;

//   ProductVariant(
//       {this.id,
//       this.storeId,
//       this.storeName,
//       this.productName,
//       this.productNum,
//       this.refNum,
//       this.categoryId,
//       this.categoryName,
//       this.brandId,
//       this.brandName,
//       this.modelId,
//       this.modelName,
//       this.year,
//       this.condition,
//       this.priceBeforeDiscount,
//       this.discountAmount,
//       this.discountType,
//       this.sellPrice,
//       this.qty,
//       this.alertQty,
//       this.priceStatus,
//       this.imageThumbnail,
//       this.shortDesc,
//       this.fullDesc,
//       this.sellStatus,
//       this.status,
//       this.orderCount,
//       this.rateCount,
//       this.attributeKey,
//       this.hasVariant,
//       this.parentId,
//       this.variantDetail,
//       this.preOrder});

//   ProductVariant.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     storeId = json['store_id'];
//     storeName = json['store_name'];
//     productName = json['product_name'];
//     productNum = json['product_num'];
//     refNum = json['ref_num'];
//     categoryId = json['category_id'];
//     categoryName = json['category_name'];
//     brandId = json['brand_id'];
//     brandName = json['brand_name'];
//     modelId = json['model_id'];
//     modelName = json['model_name'];
//     year = json['year'];
//     condition = json['condition'];
//     priceBeforeDiscount = json['price_before_discount'];
//     discountAmount = json['discount_amount'];
//     discountType = json['discount_type'];
//     sellPrice = json['sell_price'];
//     qty = json['qty'];
//     alertQty = json['alert_qty'];
//     priceStatus = json['price_status'];
//     imageThumbnail = json['image_thumbnail'];
//     shortDesc = json['short_desc'];
//     fullDesc = json['full_desc'];
//     sellStatus = json['sell_status'];
//     status = json['status'];
//     orderCount = json['order_count'];
//     rateCount = json['rate_count'];
//     attributeKey = json['attribute_key'];
//     hasVariant = json['has_variant'];
//     parentId = json['parent_id'];
//     variantDetail = json['variant_detail'];
//     preOrder = json['pre_order'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['store_id'] = storeId;
//     data['store_name'] = storeName;
//     data['product_name'] = productName;
//     data['product_num'] = productNum;
//     data['ref_num'] = refNum;
//     data['category_id'] = categoryId;
//     data['category_name'] = categoryName;
//     data['brand_id'] = brandId;
//     data['brand_name'] = brandName;
//     data['model_id'] = modelId;
//     data['model_name'] = modelName;
//     data['year'] = year;
//     data['condition'] = condition;
//     data['price_before_discount'] = priceBeforeDiscount;
//     data['discount_amount'] = discountAmount;
//     data['discount_type'] = discountType;
//     data['sell_price'] = sellPrice;
//     data['qty'] = qty;
//     data['alert_qty'] = alertQty;
//     data['price_status'] = priceStatus;
//     data['image_thumbnail'] = imageThumbnail;
//     data['short_desc'] = shortDesc;
//     data['full_desc'] = fullDesc;
//     data['sell_status'] = sellStatus;
//     data['status'] = status;
//     data['order_count'] = orderCount;
//     data['rate_count'] = rateCount;
//     data['attribute_key'] = attributeKey;
//     data['has_variant'] = hasVariant;
//     data['parent_id'] = parentId;
//     data['variant_detail'] = variantDetail;
//     data['pre_order'] = preOrder;
//     return data;
//   }
// }
