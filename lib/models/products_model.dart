import 'package:flutter/cupertino.dart';

class Product {
  // int? totalSize;
  // int? typeId;
  // int? offset;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product(
      {
      //   required totalSize,
      // required typeId,
      // required offset,
      required products}) {
    this._products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  int? subcategoryId;
  String? productCode;
  String? slug;
  String? productName;
  String? productImage;
  String? productQuantity;
  String? productPrice;
  String? productDescription;
  Null? saleTag;
  String? offerPrice;
  int? status;
  int? newArrivalProducts;
  int? featuredProducts;
  int? offerProducts;
  int? trending;
  String? metaTitle;
  String? metaDescription;
  String? metaKeyword;
  String? createdAt;
  String? updatedAt;

  ProductModel(
      {this.id,
      this.subcategoryId,
      this.productCode,
      this.slug,
      this.productName,
      this.productImage,
      this.productQuantity,
      this.productPrice,
      this.productDescription,
      this.saleTag,
      this.offerPrice,
      this.status,
      this.newArrivalProducts,
      this.featuredProducts,
      this.offerProducts,
      this.trending,
      this.metaTitle,
      this.metaDescription,
      this.metaKeyword,
      this.createdAt,
      this.updatedAt});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subcategoryId = json['subcategory_id'];
    productCode = json['product_code'];
    slug = json['slug'];
    productName = json['product_name'];
    productImage = json['product_image'];
    productQuantity = json['product_quantity'];
    productPrice = json['product_price'];
    productDescription = json['product_description'];
    saleTag = json['sale_tag'];
    offerPrice = json['offer_price'];
    status = json['status'];
    newArrivalProducts = json['new_arrival_products'];
    featuredProducts = json['featured_products'];
    offerProducts = json['offer_products'];
    trending = json['trending'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeyword = json['meta_keyword'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
