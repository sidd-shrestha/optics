import 'package:optics/models/products_model.dart';

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
  String? time;
  ProductModel? product;

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
    this.time,
    this.product,
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
    time = json['time'];
    product = ProductModel.fromJson(json['product']);
  }

  CartModel.fromStorageJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['productName'];
    productImage = json['productImage'];
    productQuantity = json['productQuantity'];
    productPrice = json['productPrice'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    quantity = json['quantity'];
    isExist = json['isExist'];
    time = json['time'];
    product = ProductModel.fromLocalJson(json['product']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "productName": this.productName,
      "productImage": this.productImage,
      "productQuantity": this.productQuantity,
      "productPrice": this.productPrice,
      "createdAt": this.createdAt,
      "updatedAt": this.updatedAt,
      "quantity": this.quantity,
      "isExist": this.isExist,
      "time": this.time,
      "product": this.product!.toJson(),
    };
  }
}
