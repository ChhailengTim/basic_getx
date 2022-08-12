

import 'package:api_fetch/constant.dart';

class Pagination {
  final int? total;
  int perPage;
  int currentPage;
  int lastPage;
  final int? from;
  final int? to;

  Pagination({
    this.total,
    this.perPage = 10,
    this.currentPage = 0,
    this.lastPage = 1,
    this.from,
    this.to,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json['total'],
        perPage: json['per_page'],
        currentPage: json['current_page'],
        lastPage: json['last_page'],
        from: json['from'],
        to: json['to'],
      );
}

List<Product> getProductModel(List<dynamic> data) =>
    List<Product>.from(data.map((e) => Product.fromJson(e)));

class Product {
  final int? id;
  final int? storeId;
  final String? storeName;
  final String? productName;
  final String? productNum;
  final String? refNum;
  final int? categoryId;
  final String? categoryName;
  final int? brandId;
  final String? brandName;
  final int? modelId;
  final String? modelName;
  final int? year;
  final String? condition;
  final String? priceBeforeDiscount;
  final String? discountAmount;
  final int? discountType;
  final String? sellPrice;
  final int? qty;
  final String? alertQty;
  final String? priceStatus;
  final String? imageThumbnail;
  final String? shortDesc;
  final String? fullDesc;
  final String? sellStatus;
  final int? status;
  final int? orderCount;
  final String? rateCount;
  final String? attributeKey;
  final int? hasVariant;
  final int? parentId;
  final String? variantDetail;
  final int? preOrder;
  final List<ItemAttribute>? itemAttribute;
  final List<FileManager>? fileManager;
  final List<ProductOption>? productOption;
  final List<ProductVariant>? productVariant;

  Product({
    this.id,
    this.storeId,
    this.storeName,
    this.productName,
    this.productNum,
    this.refNum,
    this.categoryId,
    this.categoryName,
    this.brandId,
    this.brandName,
    this.modelId,
    this.modelName,
    this.year,
    this.condition,
    this.priceBeforeDiscount,
    this.discountAmount,
    this.discountType,
    this.sellPrice,
    this.qty,
    this.alertQty,
    this.priceStatus,
    this.imageThumbnail,
    this.shortDesc,
    this.fullDesc,
    this.sellStatus,
    this.status,
    this.orderCount,
    this.rateCount,
    this.attributeKey,
    this.hasVariant,
    this.parentId,
    this.variantDetail,
    this.preOrder,
    this.itemAttribute,
    this.fileManager,
    this.productOption,
    this.productVariant,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        storeId: json['store_id'],
        storeName: json['store_name'],
        productName: json['product_name'],
        productNum: json['product_num'],
        refNum: json['ref_num'],
        categoryId: json['category_id'],
        categoryName: json['category_name'],
        brandId: json['brand_id'],
        brandName: json['brand_name'],
        modelId: json['model_id'],
        modelName: json['model_name'],
        year: json['year'],
        condition: json['condition'],
        priceBeforeDiscount: json['price_before_discount'],
        discountAmount: json['discount_amount'],
        discountType: json['discount_type'],
        sellPrice: json['sell_price'],
        qty: json['qty'],
        alertQty: json['alert_qty'],
        priceStatus: json['price_status'],
        imageThumbnail: ImageURL.productImage + json['image_thumbnail'],
        shortDesc: json['short_desc'],
        fullDesc: json['full_desc'],
        sellStatus: json['sell_status'],
        status: json['status'],
        orderCount: json['order_count'],
        rateCount: json['rate_count'],
        attributeKey: json['attribute_key'],
        hasVariant: json['has_variant'],
        parentId: json['parent_id'],
        variantDetail: json['variant_detail'],
        preOrder: json['pre_order'],
        itemAttribute: List<ItemAttribute>.from(
            json['item_attribute'].map((e) => ItemAttribute.fromJson(e))),
        fileManager: List<FileManager>.from(
            json['file_manager'].map((e) => FileManager.fromJson(e))),
        productOption: List<ProductOption>.from(
            json['product_option'].map((e) => ProductOption.fromJson(e))),
        productVariant: List<ProductVariant>.from(
            json['product_variant'].map((e) => ProductVariant.fromJson(e))),
      );
}

class ItemAttribute {
  final int? id;
  final int? productItemId;
  final int? attributeParent;
  final int? attributeId;
  final String? attributeVal;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt; //null
  final String? attributeName;

  ItemAttribute({
    this.id,
    this.productItemId,
    this.attributeParent,
    this.attributeId,
    this.attributeVal,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.attributeName,
  });

  factory ItemAttribute.fromJson(Map<String, dynamic> json) => ItemAttribute(
        id: json['id'],
        productItemId: json['product_item_id'],
        attributeParent: json['attribute_parent'],
        attributeId: json['attribute_id'],
        attributeVal: json['attribute_val'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        deletedAt: json['deleted_at'],
        attributeName: json['attribute_name'],
      );
}

List<FileManager> getFileManagerModel(List<dynamic> data) =>
    List<FileManager>.from(data.map((e) => FileManager.fromJson(e)));

class FileManager {
  final int? id;
  final int? productId;
  final int? fileManagerId;
  final String? fileName;

  FileManager({
    this.id,
    this.productId,
    this.fileManagerId,
    this.fileName,
  });

  factory FileManager.fromJson(Map<String, dynamic> json) => FileManager(
        id: json['id'],
        productId: json['product_id'],
        fileManagerId: json['file_manager_id'],
        fileName: json['file_name'],
      );
}

class ProductOption {
  final int? id;
  final int? itemId;
  final String? name;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt; //null
  final List<ProductOptionValue>? productOptionValue;

  ProductOption({
    this.id,
    this.itemId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productOptionValue,
  });

  factory ProductOption.fromJson(Map<String, dynamic> json) => ProductOption(
        id: json['id'],
        itemId: json['item_id'],
        name: json['name'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        deletedAt: json['deleted_at'],
        productOptionValue: json['product_option_value'] == null
            ? null
            : List<ProductOptionValue>.from(json['product_option_value']
                .map((e) => ProductOptionValue.fromJson(e))), //Not sure
      );
}

class ProductOptionValue {
  final int? id;
  final int? itemId;
  final int? itemOptionId;
  final String? name;
  final String? image;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt; //null

  ProductOptionValue({
    this.id,
    this.itemId,
    this.itemOptionId,
    this.name,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory ProductOptionValue.fromJson(Map<String, dynamic> json) =>
      ProductOptionValue(
        id: json['id'],
        itemId: json['item_id'],
        itemOptionId: json['item_option_id'],
        name: json['name'],
        image: json['image'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        deletedAt: json['deleted_at'],
      );
}

class ProductVariant {
  final int? id;
  final int? storeId;
  final String? storeName;
  final String? productName;
  final String? productNum;
  final String? refNum;
  final int? categoryId;
  final String? categoryName;
  final int? brandId;
  final String? brandName;
  final int? modelId;
  final String? modelName;
  final int? year;
  final String? condition; //null
  final String? priceBeforeDiscount;
  final String? discountAmount;
  final int? discountType;
  final String? sellPrice;
  final int? qty;
  final String? alertQty;
  final String? priceStatus;
  final String? imageThumbnail;
  final String? shortDesc;
  final String? fullDesc;
  final String? sellStatus;
  final int? status;
  final int? orderCount;
  final String? rateCount;
  final String? attributeKey; //null
  final int? hasVariant;
  final int? parentId;
  final String? variantDetail;
  final int? preOrder;

  ProductVariant(
      {this.id,
      this.storeId,
      this.storeName,
      this.productName,
      this.productNum,
      this.refNum,
      this.categoryId,
      this.categoryName,
      this.brandId,
      this.brandName,
      this.modelId,
      this.modelName,
      this.year,
      this.condition,
      this.priceBeforeDiscount,
      this.discountAmount,
      this.discountType,
      this.sellPrice,
      this.qty,
      this.alertQty,
      this.priceStatus,
      this.imageThumbnail,
      this.shortDesc,
      this.fullDesc,
      this.sellStatus,
      this.status,
      this.orderCount,
      this.rateCount,
      this.attributeKey,
      this.hasVariant,
      this.parentId,
      this.variantDetail,
      this.preOrder});

  factory ProductVariant.fromJson(Map<String, dynamic> json) => ProductVariant(
        id: json['id'],
        storeId: json['store_id'],
        storeName: json['store_name'],
        productName: json['product_name'],
        productNum: json['product_num'],
        refNum: json['ref_num'],
        categoryId: json['category_id'],
        categoryName: json['category_name'],
        brandId: json['brand_id'],
        brandName: json['brand_name'],
        modelId: json['model_id'],
        modelName: json['model_name'],
        year: json['year'],
        condition: json['condition'],
        priceBeforeDiscount: json['price_before_discount'],
        discountAmount: json['discount_amount'],
        discountType: json['discount_type'],
        sellPrice: json['sell_price'],
        qty: json['qty'],
        alertQty: json['alert_qty'],
        priceStatus: json['price_status'],
        imageThumbnail: json['image_thumbnail'],
        shortDesc: json['short_desc'],
        fullDesc: json['full_desc'],
        sellStatus: json['sell_status'],
        status: json['status'],
        orderCount: json['order_count'],
        rateCount: json['rate_count'],
        attributeKey: json['attribute_key'],
        hasVariant: json['has_variant'],
        parentId: json['parent_id'],
        variantDetail: json['variant_detail'],
        preOrder: json['pre_order'],
      );
}