import 'package:flutter/cupertino.dart';

class CartModel {
  int? id;
  String? productName;
  String? productImage;
  String? productQuantity;
  String? productPrice;
  String? createdAt;
  String? updatedAt;
  int? quantity;
  bool? isExist;

  CartModel({
    this.id,
    this.productName,
    this.productImage,
    this.productQuantity,
    this.productPrice,
    this.createdAt,
    this.updatedAt,
    this.quantity,
    this.isExist,
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    productImage = json['product_image'];
    productQuantity = json['product_quantity'];
    productPrice = json['product_price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    quantity = json['quantity'];
    isExist = json['isExist'];
  }
}
